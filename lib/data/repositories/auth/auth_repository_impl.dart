import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../error/failure.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final SupabaseClient supabaseClient = Supabase.instance.client;
  final _log = Logger('AuthRepositoryImpl');

  @override
  Future<Either<Failure, AuthResponse>> login(
      String email, String password) async {
    try {
      final response = await supabaseClient.auth
          .signInWithPassword(email: email, password: password);
      _log.info(response);
      return Right(response);
    } on AuthException catch (e) {
      return Left(Failure.buildFromException(e));
    } catch (e) {
      return Left(Failure.buildFromException(e as Exception));
    }
  }

  @override
  Future<AuthResponse> register(String email, String password) async {
    return await supabaseClient.auth.signUp(email: email, password: password);
  }

  @override
  Future<void> logout() async {
    await supabaseClient.auth.signOut();
  }

  @override
  String? getCurrentUserEmail() {
    return supabaseClient.auth.currentUser?.email;
  }
}
