import 'package:flutter/foundation.dart';

class Environment {
  static Map<String, dynamic> _env() {
    Map<String, dynamic> envs = {
      "prod": {
        "api": {"url": "https://api-password.thesoftlink.com/api"}
      },
      "dev": {
        "tmp": {
          "token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2OTc3NjUyNDcsImV4cCI6MTY5Nzc2ODg0NywibmJmIjoxNjk3NzY1MjQ3LCJqdGkiOiJZeGRnbkgzSW1wNGk4SmN4Iiwic3ViIjoiNCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.0L6ED9Ya9at1dKYTAw6__ItN5OPBZeE8GNSCX77RkQk",
        },
        "api": {"url": "http://10.0.2.2:8000/api"}
      }
    };
    Map<String, dynamic> env = kReleaseMode ? envs['prod'] : envs['dev'];
    return env;
  }

  static get envs {
    return Environment._env();
  }
}
