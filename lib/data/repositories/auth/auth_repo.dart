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

  // Future<void> signInWithMagicLink(String email) async {
  //   // TODO: fake data
  //   return;
  //
  //   try {
  //     await supabase.auth.signInWithOtp(
  //       email: email,
  //       emailRedirectTo: Constants.supabaseLoginCallback,
  //     );
  //   } on AuthException catch (error) {
  //     throw Exception(error.message);
  //   } catch (error) {
  //     throw Exception(Languages.unexpectedErrorOccurred);
  //   }
  // }

  // Future<AuthResponse> verifyOtp({
  //   required String email,
  //   required String token,
  //   required bool isRegister,
  // }) async {
  //   try {
  //     // TODO: fake data
  //     return AuthResponse(
  //       user: User(
  //         id: '',
  //         appMetadata: {},
  //         userMetadata: {},
  //         aud: '',
  //         createdAt: '',
  //         email: email,
  //       ),
  //     );
  //
  //     final result = await supabase.auth.verifyOTP(
  //       email: email,
  //       token: token,
  //       type: isRegister ? OtpType.signup : OtpType.magiclink,
  //     );
  //     return result;
  //   } on AuthException catch (error) {
  //     throw Exception(error.message);
  //   } catch (error) {
  //     throw Exception(Languages.unexpectedErrorOccurred);
  //   }
  // }

  // Future<AuthResponse> signInWithGoogle() async {
  //   // TODO: fake data
  //   return AuthResponse(
  //     user: User(
  //       id: '',
  //       appMetadata: {},
  //       userMetadata: {},
  //       aud: '',
  //       createdAt: '',
  //       email: 'henry@google.com',
  //     ),
  //   );
  //
  //   try {
  //     const List<String> scopes = <String>[
  //       Constants.googleEmailScope,
  //       Constants.googleUserInfoScope,
  //     ];
  //
  //     final GoogleSignIn googleSignIn = GoogleSignIn(
  //       clientId: Env.googleClientId,
  //       serverClientId: Env.googleServerClientId,
  //       scopes: scopes,
  //     );
  //     final googleUser = await googleSignIn.signIn();
  //     final googleAuth = await googleUser!.authentication;
  //     final accessToken = googleAuth.accessToken;
  //     final idToken = googleAuth.idToken;
  //
  //     if (accessToken == null) {
  //       throw Exception('access_token_not_found'.tr());
  //     }
  //
  //     if (idToken == null) {
  //       throw Exception('id_token_not_found'.tr());
  //     }
  //
  //     final result = await supabase.auth.signInWithIdToken(
  //       provider: OAuthProvider.google,
  //       idToken: idToken,
  //       accessToken: accessToken,
  //     );
  //     return result;
  //   } on AuthException catch (error) {
  //     throw Exception(error.message);
  //   } catch (error) {
  //     throw Exception(Languages.unexpectedErrorOccurred);
  //   }
  // }
  //
  // Future<AuthResponse> signInWithApple() async {
  //   // TODO: fake data
  //   return AuthResponse(
  //     user: User(
  //       id: '',
  //       appMetadata: {},
  //       userMetadata: {},
  //       aud: '',
  //       createdAt: '',
  //       email: 'henry@apple.com',
  //     ),
  //   );
  //
  //   try {
  //     final rawNonce = supabase.auth.generateRawNonce();
  //     final hashedNonce = sha256.convert(utf8.encode(rawNonce)).toString();
  //
  //     final credential = await SignInWithApple.getAppleIDCredential(
  //       scopes: [
  //         AppleIDAuthorizationScopes.email,
  //         AppleIDAuthorizationScopes.fullName,
  //       ],
  //       nonce: hashedNonce,
  //     );
  //
  //     final idToken = credential.identityToken;
  //     if (idToken == null) {
  //       throw Exception('id_token_not_found'.tr());
  //     }
  //
  //     final result = await supabase.auth.signInWithIdToken(
  //       provider: OAuthProvider.apple,
  //       idToken: idToken,
  //       nonce: rawNonce,
  //     );
  //     return result;
  //   } on AuthException catch (error) {
  //     throw Exception(error.message);
  //   } catch (error) {
  //     throw Exception(Languages.unexpectedErrorOccurred);
  //   }
  // }

  @override
  Future<Either<Failure, AuthResponse>> signIn(
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

  @override
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
