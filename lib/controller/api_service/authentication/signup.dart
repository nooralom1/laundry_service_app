import 'package:flutter/material.dart';

class SignUpService {
  static Future<bool> signUpService({required String email, required String name, required String password,}) async {
    try {
      
      await Future.delayed(const Duration(seconds: 2));
      return true;
    } catch (e) {
      debugPrint("Error : $e");
    }
    return false;
  }
}