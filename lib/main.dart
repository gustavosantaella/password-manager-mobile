import 'dart:io';

import 'package:flutter/material.dart';
import 'package:password_manager/src/helpers/http.dart';
import 'package:password_manager/src/pages/auth/login/main.dart';
import 'package:password_manager/src/pages/home/main.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

Http http = Http();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory appDocumentDir =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/home": (context) => const HoemScreen()
      },
    );
  }
}
