import '../../../../domain/models/user/user.dart';

class UserMapper {
  static User userJsonToEntity(Map<String, dynamic> json) => User(
        name: json['name'],
        picture: json['picture'],
      );
}
