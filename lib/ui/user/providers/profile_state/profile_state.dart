import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/user/user.dart';

part 'profile_state.freezed.dart';
part 'profile_state.g.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    User? profile,
  }) = _ProfileState;

  factory ProfileState.fromJson(Map<String, Object?> json) =>
      _$ProfileStateFromJson(json);
}
