import '../../../domain/models/user/user.dart';

abstract class UserRepository {
  Future<User> getUser(String email);
  Future<void> updateUser(User user);
  Future<void> deleteUser(User user);
}
