import 'package:formz/formz.dart';

enum ConfirmedPasswordValidationError {
  empty,
  length,
  mismatch,
  format,
}

class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  static final RegExp passwordRegExp = RegExp(
    r'(?:(?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$',
  );
  final String password;
  // Call super.pure to represent an unmodified form input.
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');

  // Call super.dirty to represent a modified form input.
  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;
    if (displayError == ConfirmedPasswordValidationError.empty) {
      return 'El campo es requerido';
    }
    if (displayError == ConfirmedPasswordValidationError.length) {
      return 'Debe tener mínimo 6 caracteres';
    }
    if (displayError == ConfirmedPasswordValidationError.format) {
      return 'Debe de tener Mayúscula, letras y un número';
    }
    if (displayError == ConfirmedPasswordValidationError.mismatch) {
      return 'No coincide la confirmación de la contraseña';
    }

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  ConfirmedPasswordValidationError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return ConfirmedPasswordValidationError.empty;
    }
    if (value.length < 6) return ConfirmedPasswordValidationError.length;
    if (!passwordRegExp.hasMatch(value))
      return ConfirmedPasswordValidationError.format;

    return password == value ? null : ConfirmedPasswordValidationError.mismatch;
  }
}
