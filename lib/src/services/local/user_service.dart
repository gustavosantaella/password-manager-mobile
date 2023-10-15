import 'package:hive/hive.dart';
import 'package:password_manager/src/services/remote/service.dart';

class UserService extends Service {
  late Box _box;

  UserService(){
     Hive.openBox("user").then((value) => {
      _box = value
     });
  }
  Future<String?> getToken() async {

    return  _box.get("token");

  }
}