import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../data/repositories/auth/auth_repository_impl.dart';
import '../../../../data/services/local/key_value_storage.dart';
import '../../../../data/services/local/key_value_storage_impl.dart';
import '../../../../utils/auth_error.dart';

enum AuthStatus { checking, auth, notAuth }

class AuthState {
  final AuthStatus status;
  final User? user;
  final String errorMessage;

  AuthState(
      {this.status = AuthStatus.checking, this.user, this.errorMessage = ''});

  AuthState copyWith({AuthStatus? status, User? user, String? errorMessage}) =>
      AuthState(
          status: status ?? this.status,
          user: user ?? this.user,
          errorMessage: errorMessage ?? this.errorMessage);
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;
  final KeyValueStorageService keyValueStorageService;

  AuthNotifier(
      {required this.authRepository, required this.keyValueStorageService})
      : super(AuthState());

  Future<void> loginUser(String email, String password) async {
    try {
      final response = await authRepository.login(email, password);
      response.fold((failure) async {
        logout(failure.message);
      }, (data) async {
        _setLoggedUser(data.session!.accessToken);
        state = state.copyWith(user: data.user);
      });
    } on CustomException catch (e) {
      logout(e.message);
    } catch (e) {
      logout((e as AuthException).message);
    }
  }

  void registerUser(String email, String password) async {
    try {
      final authResponse = await authRepository.register(email, password);
      log('authResponse: ${authResponse.session}');
    } on CustomException catch (e) {
      logout(e.message);
    } catch (e) {
      logout('Error no controlado');
    }
  }

  void _setLoggedUser(String token) async {
    await keyValueStorageService.setKeyValue('token', token);
    state = state.copyWith(status: AuthStatus.auth, errorMessage: '');
  }

  Future<void> logout([String? errorMessage]) async {
    await keyValueStorageService.removeKey('token');
    state = state.copyWith(
        status: AuthStatus.notAuth, errorMessage: errorMessage, user: null);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final repository = AuthRepositoryImpl();
  final keyValueStorageService = KeyValueStorageServiceImpl();
  return AuthNotifier(
      authRepository: repository,
      keyValueStorageService: keyValueStorageService);
});
