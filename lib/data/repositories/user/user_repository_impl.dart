import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/models/user/user.dart' as user;
import '../../error/failure.dart';
import 'user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final SupabaseClient supabaseClient = Supabase.instance.client;
  final _log = Logger('UserRepositoryImpl');

  @override
  Future<Either<Failure, void>> deleteUser(user.User user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, user.User>> getUser(String email) async {
    try {
      final response =
          await supabaseClient.from('profile').select().eq('email', email);
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
