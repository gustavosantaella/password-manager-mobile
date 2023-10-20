import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/src/dto/password_dto.dart';
import 'package:password_manager/src/helpers/http.dart';
import 'package:password_manager/src/services/remote/service.dart';

class PasswordService extends Service {


    Future<void> create(PasswordDTO dto,) async {
  }

     Future<dynamic> getMyPasswords() async {

   Response data = await Http.request.get("/password/my");
   print(data);

  }
}