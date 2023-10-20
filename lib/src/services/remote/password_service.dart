import 'package:dio/dio.dart';
import 'package:password_manager/main.dart';
import 'package:password_manager/src/dto/password_dto.dart';
import 'package:password_manager/src/services/remote/service.dart';

class PasswordService extends Service {
  Future<void> create(
    PasswordDTO dto,
  ) async {}

  Future<dynamic> getMyPasswords() async {
    try {
      Response data = await http.request.get("/password/my");
      if (data.data['error'] != null) {
        throw Exception("An error ocurredn");
      }

      return data.data!['data'];
    } catch (e) {
      print('error');
      print(e.toString());
    }
  }
}
