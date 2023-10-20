import 'package:dio/dio.dart';
import 'package:password_manager/src/helpers/environment.dart';
import 'package:password_manager/src/services/local/user_service.dart';

class Http {
 static late Dio request;
  Http() {
    Dio dio = Dio();
    UserService userService = UserService();

    dio.interceptors.add(InterceptorsWrapper(onRequest:
        (RequestOptions options, RequestInterceptorHandler handler) async {
      // String? token = await userService.getToken();
      String? token = "";
      String baseUrl = Environment.envs["api"]['url'];
      Map<String, dynamic> customHeaders = {
        'content-type': 'application/json',
        "Authorization": "Bearer $token",
        // other headers
      };
      options.baseUrl = baseUrl;
      options.headers.addAll(customHeaders);
    }));

    Http.request = dio;
  }
}
