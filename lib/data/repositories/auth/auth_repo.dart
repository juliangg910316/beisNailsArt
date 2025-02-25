import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../config/constants.dart';
import '../../error/failure.dart';

part 'auth_repo.g.dart';

@riverpod
AuthRepo authRepo(Ref ref) {
  return AuthRepo();
}

class AuthRepo {
  final SupabaseClient supabaseClient = Supabase.instance.client;
  final _log = Logger('AuthenticationRepository');

  AuthRepo();

  Future<Either<Failure, AuthResponse>> signIn(
      String email, String password) async {
    try {
      final response = await supabaseClient.auth
          .signInWithPassword(email: email, password: password);
      _log.info(response);
      return Right(response);
    } on AuthException catch (e) {
      _log.info(e);
      return Left(Failure.buildFromException(e));
    } catch (e) {
      _log.info(e);
      return Left(Failure.buildFromException(e as Exception));
    }
  }

  Future<Either<Failure, AuthResponse>> register(
      String email, String password) async {
    try {
      final response =
          await supabaseClient.auth.signUp(email: email, password: password);
      _log.info(response);
      return Right(response);
    } on AuthException catch (e) {
      return Left(Failure.buildFromException(e));
    } catch (e) {
      return Left(Failure.buildFromException(e as Exception));
    }
  }

  String? getCurrentUserEmail() {
    return supabaseClient.auth.currentUser?.email;
  }

  Future<void> signOut() async {
    try {
      await supabaseClient.auth.signOut();
      setIsLogin(false);
    } on AuthException catch (error) {
      throw Exception(error.message);
    } catch (error) {
      throw Exception('Error inesperado');
    }
  }

  Future<bool> isLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Constants.isLoginKey) ?? false;
  }

  Future<void> setIsLogin(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(Constants.isLoginKey, value);
  }

  Future<bool> isExistAccount() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Constants.isExistAccountKey) ?? false;
  }

  Future<void> setIsExistAccount(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(Constants.isExistAccountKey, value);
  }
}
