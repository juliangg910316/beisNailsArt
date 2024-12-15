class WrongCredentials implements Exception {}

class InvalidToken implements Exception {}

class ConnectionTimeout implements Exception {}

class CustomException implements Exception {
  final String message;
  // final int code;

  CustomException(this.message);
}
