import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> login(String email, String password);
  Future<AuthResponse> register(String email, String password);
  Future<void> logout();
  String? getCurrentUserEmail();
  // Future<User> checkAuthStatus(String token);
}
