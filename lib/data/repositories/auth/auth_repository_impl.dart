import 'package:dio/dio.dart';

import '../../../domain/models/user/user.dart';
import '../../../utils/auth_error.dart';
import '../../services/api/model/user_mapper.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000'));

  @override
  Future<User> checkAuthStatus(String token) async {
    try {
      final response = await dio.get('/auth/check-status',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomException('Token incorrecto');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomException('Error en la conexión');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final response = await dio
          .post('/auth/login', data: {'email': email, 'password': password});
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomException(
            e.response?.data['message'] ?? 'Cedenciales incorrectas');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomException('Error en la conexión');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<User> register(String email, String password, String fullname) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
