import 'package:flutter/material.dart';

class SigninService {
  static Future<bool> signInService({
    required String name,
    required String password,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return true;
    } catch (e) {
      debugPrint("Error : $e");
    }
    return false;
  }
}
