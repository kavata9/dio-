import 'package:dio_app/UserResponse.dart';
import 'package:dio/dio.dart';

class UserApiProvider{
  final String _endpoint = "https://randomuser.me/api/";
  final Dio _dio = Dio();

  Future<UserResponse> getUser() async {
    try {
      Response response = await _dio.get(_endpoint);
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return UserResponse.withError("$error");
    }
  }
}