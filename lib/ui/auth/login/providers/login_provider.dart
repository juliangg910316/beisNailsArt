import 'package:formz/formz.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/inputs/inputs.dart';
import 'auth_prov.dart';
import 'login_state/login_state.dart';

part 'login_provider.g.dart';

@riverpod
class LoginProvider extends _$LoginProvider {
  final logger = Logger('LoginbForm');

  LoginState build() {
    return LoginState();
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
      isValid: Formz.validate([newPass, state.email]),
    );
  }

  Future<void> onFormSubmit() async {
    _touchEveryField();

    if (!state.isValid) return;
    logger.info('isValid: ${state.isValid}');
    state = state.copyWith(isPosting: true);
    final authRepo = ref.read(authProvProvider.notifier);
    authRepo.signIn(state.email.value, state.password.value).then((_) {
      logger.info('signIn:');
      state = state.copyWith(isPosting: false);
    }, onError: (error) {
      logger.info('error: ${error.toString()}');
      state = state.copyWith(errorMessage: error.toString(), isPosting: false);
    });
    // await loginUserCallback(state.email.value, state.password.value);
  }

  _touchEveryField() {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    logger.info('email: $email, password: $password');
    state = state.copyWith(
      isFormPosted: true,
      email: email,
      password: password,
      isValid: Formz.validate([email, password]),
    );
  }
}
