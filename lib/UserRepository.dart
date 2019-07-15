import 'package:dio_app/UserResponse.dart';
import 'package:dio_app/UserApiProvider.dart';

class UserRepository{
  UserApiProvider _apiProvider = UserApiProvider();

  Future<UserResponse> getUser(){
    return _apiProvider.getUser();
  }
}