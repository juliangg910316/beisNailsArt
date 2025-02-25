import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/user/user_repository_impl.dart';
import '../../../domain/models/user/user.dart';
import 'profile_state/profile_state.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class ProfileViewModel extends _$ProfileViewModel {
  final logger = Logger('ProfileViewModel');

  @override
  FutureOr<ProfileState?> build() async {
    return null;
  }

  Future<void> getUser() async {
    state = const AsyncValue.loading();
    try {
      final response = await ref.read(profileRepositoryProvider).getUser();
      response.fold(
        (failure) => state = AsyncError(failure, StackTrace.current),
        (profile) => state = AsyncData(ProfileState(profile: profile)),
      );
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }

  Future<void> createUser({
    required User user,
  }) async {
    logger.info('createUser: ${user.toJson()}');
    state = const AsyncValue.loading();
    try {
      final response =
          await ref.read(profileRepositoryProvider).createUser(user);
      response
          .fold((failure) => state = AsyncError(failure, StackTrace.current),
              (profile) {
        logger.info('profile: ${profile.toJson()}');
        state = AsyncData(ProfileState(profile: profile));
      });
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }

  Future<void> updateProfile({
    String? id,
    String? name,
  }) async {
    state = const AsyncValue.loading();
    try {
      final currentProfile = state.value?.profile;

      final updatedProfile = currentProfile?.copyWith(
            // email: email ?? currentProfile.email,
            name: name ?? currentProfile.name,
          ) ??
          User(
            name: name,
            id: id!,
          );

      // await ref.read(profileRepositoryProvider).update(updatedProfile);
      state = AsyncData(ProfileState(profile: updatedProfile));
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }

  Future<void> refreshProfile() async {
    state = const AsyncValue.loading();
    try {
      // final profile = await ref.read(authRepoProvider).get();
      // state = AsyncData(ProfileState(profile: profile));
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    try {
      // await ref.read(authRepoProvider.notifier).signOut();
      state = AsyncData(ProfileState(profile: null));
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}
