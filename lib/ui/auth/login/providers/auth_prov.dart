import 'package:beis_nails_art/data/repositories/auth/auth_repo.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'auth_state/auth_state.dart' as model;

part 'auth_prov.g.dart';

@riverpod
class AuthProv extends _$AuthProv {
  final _log = Logger('AuthProv');

  @override
  FutureOr<model.AuthState> build() async {
    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      final authResponse = AuthResponse(
        session: session,
        user: session.user,
      );
      return model.AuthState(
        authResponse: authResponse,
        isSignInSuccessfully: true,
      );
    }
    return const model.AuthState();
  }

  Future<void> signIn(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final response = await ref.read(authRepoProvider).signIn(email, password);
      response.fold((failure) {
        _log.info('failure: $failure, stackTrace: ${StackTrace.current}');
        state = AsyncError(failure.message, StackTrace.current);
      }, (profile) {
        _log.info('profile: $profile, stackTrace: ${StackTrace.current}');
        state = AsyncData(
            model.AuthState(authResponse: profile, isSignInSuccessfully: true));
      });
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }

  Future<void> register(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final response =
          await ref.read(authRepoProvider).register(email, password);
      response.fold((failure) {
        _log.info('failure: $failure, stackTrace: ${StackTrace.current}');
        state = AsyncError(failure.message, StackTrace.current);
      }, (profile) {
        _log.info('profile: $profile, stackTrace: ${StackTrace.current}');
        state = AsyncData(model.AuthState(
            authResponse: profile, isRegisterSuccessfully: true));
      });
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
    // ref.read(profileViewModelProvider.notifier).updateProfile(
    //       email: authResponse.user?.email.orEmpty(),
    //       name: name,
    //       avatar: avatar,
    //     );

    state = AsyncData(
      model.AuthState(
        authResponse: authResponse,
        isRegisterSuccessfully: !isExistAccount,
        isSignInSuccessfully: true,
      ),
    );
  }
}
