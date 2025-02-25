import 'package:beis_nails_art/ui/user/providers/user_provider.dart';
import 'package:formz/formz.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/inputs/inputs.dart';
import '../../../../domain/models/user/user.dart';
import '../../login/providers/auth_prov.dart';
import 'state/register_state.dart';

part 'register_provider.g.dart';

@riverpod
class RegisterProvider extends _$RegisterProvider {
  final logger = Logger('RegisterProvider');

  @override
  RegisterState build() {
    return RegisterState();
  }

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
    logger.info('isValid: ${state.isValid}');
    state = state.copyWith(isPosting: true);
    final authRepo = ref.read(authProvProvider.notifier);
    authRepo.register(state.email.value, state.password.value).then((_) {
      logger.info('register:');
      state = state.copyWith(isPosting: false);
    }, onError: (error) {
      logger.info('error: ${error.toString()}');
      state = state.copyWith(errorMessage: error.toString(), isPosting: false);
    });
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
