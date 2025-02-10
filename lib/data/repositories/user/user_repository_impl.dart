import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/models/user/user.dart' as user;
import '../../error/failure.dart';

part 'user_repository_impl.g.dart';

@Riverpod(keepAlive: true)
UserRepositoryImpl profileRepository(Ref ref) {
  return UserRepositoryImpl();
}

class UserRepositoryImpl {
  final SupabaseQueryBuilder supabaseClient =
      Supabase.instance.client.from('profile');
  final _log = Logger('UserRepositoryImpl');

  @override
  Future<Either<Failure, user.User>> createUser(user.User newUser) async {
    try {
      final response = await supabaseClient.insert(newUser.toJson());
      _log.info(response);
      final userNew = user.User.fromJson((response as List<dynamic>)[0]);
      return Right(userNew);
    } catch (e) {
      return Left(Failure.buildFromException(e as Exception));
    }
  }

  @override
  Future<Either<Failure, user.User>> getUser() async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id ?? '';
      final response = await supabaseClient.select().eq('id', userId).single();
      _log.info(response);
      final userNew = user.User.fromJson((response as List<dynamic>)[0]);
      return Right(userNew);
    } catch (e) {
      return Left(Failure.buildFromException(e as Exception));
    }
  }

  @override
  Future<Either<Failure, void>> updateUser(user.User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> deleteUser(user.User user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  // @override
  // Future<Either<Failure, User?>> getUser(String email) async {
  //   try {
  //     final response =
  //         supabaseClient.from('profile').select().eq('email', email);
  //     return Right(User.fromJson((response as List<dynamic>)[0]));
  //   } catch (e) {
  //     return Left(Failure.buildFromException(e as Exception));
  //   }
  // }
  //
  // @override
  // Future<Either<Failure, void>> updateUser(User user) async {
  //   // return userDataSource.updateUser(user);
  // }
  //
  // @override
  // Future<Either<Failure, void>> deleteUser(User user) async {
  //   // return userDataSource.deleteUser(user);
  // }
}
