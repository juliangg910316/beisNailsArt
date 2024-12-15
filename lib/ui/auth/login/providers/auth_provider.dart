import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../data/repositories/auth/auth_repository_impl.dart';
import '../../../../data/services/local/key_value_storage.dart';
import '../../../../data/services/local/key_value_storage_impl.dart';
import '../../../../domain/models/user/user.dart';
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
      : super(AuthState()) {
    checkAuthStatus();
  }

  Future<void> loginUser(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      final user = await authRepository.login(email, password);
      _setLoggedUser('');
    } on CustomException catch (e) {
      logout(e.message);
    } catch (e) {
      logout('Error no controlado');
    }
  }

  void registerUser(String email, String password) async {}
  void checkAuthStatus() async {
    final token = await keyValueStorageService.getValue<String>('token');
    if (token == null) return logout();

    try {
      final user = await authRepository.checkAuthStatus(token);
      _setLoggedUser('');
    } catch (e) {
      logout();
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
