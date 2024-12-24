import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';

class Failure {
  const Failure({required this.message, this.exception, this.code});

  final String message;
  final int? code;
  final String? exception;

  @override
  String toString() {
    return "$code: $message";
  }

  static Failure buildFromException(Exception? e) =>
      Failure(message: errorHandler(e));

  static String errorHandler(Exception? e) {
    log('ERROR: $e');
    if (e != null && e is AuthException) {
      switch (e.statusCode) {
        case '400':
          if (e.code == "invalid_credentials") {
            return "Credenciales de autenticación incorrectas.";
          }
          return "Error en los datos.";
      }
    }
    return "Error en los datos";
  }
}
