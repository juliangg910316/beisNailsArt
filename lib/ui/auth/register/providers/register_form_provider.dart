import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

import '../../../../data/inputs/inputs.dart';
import '../../login/providers/auth_provider.dart';

class RegisterFormState {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValid;
  final Email email;
  final Password password;
  final ConfirmedPassword confirmPassword;

  RegisterFormState({
    this.isPosting = false,
    this.isFormPosted = false,
    this.isValid = false,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmedPassword.pure(),
  });

  RegisterFormState copyWith(
          {bool? isPosting,
          bool? isFormPosted,
          bool? isValid,
          Email? email,
          ConfirmedPassword? confirmPassword,
          Password? password}) =>
      RegisterFormState(
        isPosting: isPosting ?? this.isPosting,
        isFormPosted: isFormPosted ?? this.isFormPosted,
        isValid: isValid ?? this.isValid,
        email: email ?? this.email,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
      );

  @override
  String toString() {
    return '''RegisterFormState:
        isPosting: $isPosting, 
        isFormPosted: $isFormPosted, 
        isValid: $isValid, 
        email: $email, 
        password: $password,
        confirmPassword: $confirmPassword,
        
        ''';
  }
}

class RegisterFormNotifier extends StateNotifier<RegisterFormState> {
  final Function(String, String) registerUserCallback;
  RegisterFormNotifier({required this.registerUserCallback})
      : super(RegisterFormState());

  onEmailChange(String value) {
    final newEmail = Email.dirty(value);
    state = state.copyWith(
      email: newEmail,
      isValid: Formz.validate([newEmail, state.password]),
    );
  }

  onPasswordChange(String value) {
    final newPass = Password.dirty(value);
    state = state.copyWith(
      password: newPass,
      isValid: Formz.validate([newPass, state.email, state.confirmPassword]),
    );
  }

  onConfirmPasswordChange(String value) {
    final newConfirmPass =
        ConfirmedPassword.dirty(password: state.password.value, value: value);
    state = state.copyWith(
      confirmPassword: newConfirmPass,
      isValid: Formz.validate([newConfirmPass, state.email, state.password]),
    );
  }

  onFormSubmit() async {
    _touchEveryField();

    if (!state.isValid) return;
    state = state.copyWith(isPosting: true);
    await registerUserCallback(state.email.value, state.password.value);
    state = state.copyWith(isPosting: false);
  }

  _touchEveryField() {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    state = state.copyWith(
      isFormPosted: true,
      email: email,
      password: password,
      isValid: Formz.validate([email, password]),
    );
  }
}

final registerFormProvider =
    StateNotifierProvider.autoDispose<RegisterFormNotifier, RegisterFormState>(
        (ref) {
  final registerUserCallback = ref.watch(authProvider.notifier).registerUser;
  return RegisterFormNotifier(registerUserCallback: registerUserCallback);
});
