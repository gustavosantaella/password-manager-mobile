
import 'dart:convert';

abstract class DTO {

  Map<String, dynamic>toJson(){
    return jsonDecode(jsonEncode(this));
  }
}