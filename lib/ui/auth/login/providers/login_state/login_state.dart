import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/inputs/inputs.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isPosting,
    @Default(false) bool isFormPosted,
    @Default(false) bool isValid,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default('') String errorMessage,
  }) = _LoginState;
}
