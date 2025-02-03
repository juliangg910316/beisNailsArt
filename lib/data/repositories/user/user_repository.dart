import 'package:dartz/dartz.dart';

import '../../../domain/models/user/user.dart';
import '../../error/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser(String email);
  Future<Either<Failure, void>> updateUser(User user);
  Future<Either<Failure, void>> deleteUser(User user);
}
