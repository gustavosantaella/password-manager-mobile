import 'package:dio/dio.dart';
import 'package:password_manager/src/helpers/environment.dart';
import 'package:password_manager/src/services/local/user_service.dart';

class Http {
  late Dio request;
  Http() {
    Dio dio = Dio();
    UserService userService = UserService();

    try{
          String? token = Environment.envs['tmp']['token'];
      String baseUrl =  Environment.envs['api']['url'];
      Map<String, dynamic> customHeaders = {
        'content-type': 'application/json',
        "Authorization": "Bearer $token",
        // other headers
      };
      dio.options.baseUrl = baseUrl;
      dio.options.headers.addAll(customHeaders);

    request = dio;
    }catch(e){
      print("error to configure dio package");
    }
  }
}
