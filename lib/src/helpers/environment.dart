
import 'package:flutter/foundation.dart';

class Environment {
  static Map<String, dynamic> _env() {
    Map<String, dynamic> envs = {
      "prod": {
        "api": {"url": "https://api-password.thesoftlink.com/api"}
      },
      "dev": {
        "api": {
          "api": {"url": "http://10.0.2.2/api"}
        }
      }
    };
    Map<String, dynamic> env = kReleaseMode ? envs['prod'] : envs['dev'];
    return env;
  }
   static get envs {
    return Environment._env();
   }
}
