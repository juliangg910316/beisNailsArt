import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/inputs/inputs.dart';

part 'register_state.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(false) bool isPosting,
    @Default(false) bool isFormPosted,
    @Default(false) bool isValid,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmPassword,
    @Default('') String errorMessage,
  }) = _RegisterState;
}
