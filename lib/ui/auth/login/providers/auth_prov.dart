import 'package:beis_nails_art/data/repositories/auth/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'auth_state/auth_state.dart' as model;

part 'auth_prov.g.dart';

@riverpod
class AuthProv extends _$AuthProv {
  @override
  FutureOr<model.AuthState> build() async {
    return const model.AuthState();
  }

  // Future<void> signInWithMagicLink(String email) async {
  //   state = const AsyncValue.loading();
  //   final authRepo = ref.read(authenticationRepositoryProvider);
  //   final result =
  //       await AsyncValue.guard(() => authRepo.signInWithMagicLink(email));
  //
  //   if (result is AsyncError) {
  //     state = AsyncError(result.error.toString(), StackTrace.current);
  //     return;
  //   }
  //
  //   state = const AsyncData(model.AuthState());
  // }

  // Future<void> verifyOtp({
  //   required String email,
  //   required String token,
  //   required bool isRegister,
  // }) async {
  //   state = const AsyncValue.loading();
  //   final authRepo = ref.read(authenticationRepositoryProvider);
  //   final result = await AsyncValue.guard(
  //     () => authRepo.verifyOtp(
  //       email: email,
  //       token: token,
  //       isRegister: isRegister,
  //     ),
  //   );
  //   handleResult(result);
  // }

  // Future<void> signInWithGoogle() async {
  //   state = const AsyncValue.loading();
  //   final authRepo = ref.read(authenticationRepositoryProvider);
  //   final result = await AsyncValue.guard(authRepo.signInWithGoogle);
  //   handleResult(result);
  // }
  //
  // Future<void> signInWithApple() async {
  //   state = const AsyncValue.loading();
  //   final authRepo = ref.read(authenticationRepositoryProvider);
  //   final result = await AsyncValue.guard(authRepo.signInWithApple);
  //   handleResult(result);
  // }

  Future<void> signIn(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final response = await ref.read(authRepoProvider).signIn(email, password);
      response.fold(
        (failure) => state = AsyncError(failure, StackTrace.current),
        (profile) => state = AsyncData(model.AuthState()),
      );
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    final authRepo = ref.read(authRepoProvider);
    final result = await AsyncValue.guard(authRepo.signOut);

    if (result is AsyncError) {
      state = AsyncError(result.error.toString(), StackTrace.current);
      return;
    }

    state = const AsyncData(model.AuthState());
  }

  void handleResult(AsyncValue result) async {
    // debugPrint(
    //     '${Constants.tag} [AuthenticationViewModel.handleResult] result: $result');
    if (result is AsyncError) {
      state = AsyncError(result.error.toString(), StackTrace.current);
      return;
    }

    final AuthResponse? authResponse = result.value;
    // debugPrint(
    //     '${Constants.tag} [AuthenticationViewModel.handleResult] authResponse: ${authResponse?.user?.toJson()}');
    if (authResponse == null) {
      state = AsyncError('Error inesperado', StackTrace.current);
      return;
    }

    final isExistAccount = await ref.read(authRepoProvider).isExistAccount();
    if (!isExistAccount) {
      ref.read(authRepoProvider).setIsExistAccount(true);
    }

    String? name;
    String? avatar;
    final metaData = authResponse.user?.userMetadata;
    if (metaData != null) {
      name = metaData['full_name'];
      avatar = metaData['avatar_url'];
    }
    ref.read(authRepoProvider).setIsLogin(true);
    ref.read(profileViewModelProvider.notifier).updateProfile(
          email: authResponse.user?.email.orEmpty(),
          name: name,
          avatar: avatar,
        );

    state = AsyncData(
      model.AuthState(
        authResponse: authResponse,
        isRegisterSuccessfully: !isExistAccount,
        isSignInSuccessfully: true,
      ),
    );
  }
}
