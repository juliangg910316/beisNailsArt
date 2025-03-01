import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @JsonKey(toJson: _authResponseToJson, fromJson: _authResponseFromJson)
    AuthResponse? authResponse,
    @Default(false) bool isRegisterSuccessfully,
    @Default(false) bool isSignInSuccessfully,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, Object?> json) =>
      _$AuthStateFromJson(json);
}

AuthResponse? _authResponseFromJson(Map<String, dynamic>? json) {
  return json == null ? null : AuthResponse.fromJson(json);
}

Map<String, dynamic>? _authResponseToJson(AuthResponse? instance) {
  if (instance == null) return null;
  return {
    'user': instance.user?.toJson(),
    'session': instance.session?.toJson(),
  };
}
