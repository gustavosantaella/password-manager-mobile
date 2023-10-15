import 'package:dio/dio.dart';
import 'package:password_manager/src/services/local/user_service.dart';

abstract class Service {
  late Dio http;
  Service() {
    Dio dio = Dio();
    UserService userService = UserService();

    dio.interceptors.add(InterceptorsWrapper(onRequest:
        (RequestOptions options, RequestInterceptorHandler handler) async {
      String? token = await userService.getToken();
      String baseUrl = "";
      Map<String, dynamic> customHeaders = {
        'content-type': 'application/json',
        "Authorization": "Bearer $token",
        // other headers
      };
      options.baseUrl = baseUrl;
      options.headers.addAll(customHeaders);
    }));

    http = dio;
  }
}
