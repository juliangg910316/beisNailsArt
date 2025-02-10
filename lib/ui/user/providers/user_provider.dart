import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/user/user_repository_impl.dart';
import '../../../domain/models/user/user.dart';
import 'profile_state/profile_state.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class ProfileViewModel extends _$ProfileViewModel {
  @override
  FutureOr<ProfileState?> build() async {
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
    state = const AsyncValue.loading();
    try {
      final response =
          await ref.read(profileRepositoryProvider).createUser(user);
      response.fold(
        (failure) => state = AsyncError(failure, StackTrace.current),
        (profile) => state = AsyncData(ProfileState(profile: profile)),
      );
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }

  // Future<void> updateProfile({
  //   String? email,
  //   String? name,
  //   String? avatar,
  // }) async {
  //   state = const AsyncValue.loading();
  //   try {
  //     final currentProfile = state.value?.profile;
  //
  //     final updatedProfile = currentProfile?.copyWith(
  //       email: email ?? currentProfile.email,
  //       name: name ?? currentProfile.name,
  //       avatar: avatar ?? currentProfile.avatar,
  //     ) ??
  //         Profile(
  //           email: email,
  //           name: name,
  //           avatar: avatar,
  //         );
  //
  //     await ref.read(profileRepositoryProvider).update(updatedProfile);
  //     state = AsyncData(ProfileState(profile: updatedProfile));
  //   } catch (error) {
  //     state = AsyncError(error, StackTrace.current);
  //   }
  // }

  // Future<void> refreshProfile() async {
  //   state = const AsyncValue.loading();
  //   try {
  //     final profile = await ref.read(profileRepositoryProvider).get();
  //     state = AsyncData(ProfileState(profile: profile));
  //   } catch (error) {
  //     state = AsyncError(error, StackTrace.current);
  //   }
  // }

  // Future<void> signOut() async {
  //   state = const AsyncValue.loading();
  //   try {
  //     await ref.read(authenticationViewModelProvider.notifier).signOut();
  //     state = AsyncData(ProfileState(profile: null));
  //   } catch (error) {
  //     state = AsyncError(error, StackTrace.current);
  //   }
  // }
}
