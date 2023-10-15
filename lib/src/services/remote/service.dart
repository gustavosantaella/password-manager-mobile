import 'package:dio/dio.dart';

class Service {
  late Dio http ;
   Service() {
    Dio dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      String token = "";
      String baseUrl= "";
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
