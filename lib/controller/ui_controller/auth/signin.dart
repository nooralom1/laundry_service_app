import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/api_service/authentication/signin.dart';

class SigninController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  RxBool isPasswordEnable = true.obs;
  RxBool isLoading = false.obs;

  Future<bool> signInService() async {
    bool a = await SigninService.signInService(
        name: nameController.text, password: passController.text);
    return a;
  }

  @override
  void onInit() {
    nameController.text;
    passController.text;
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    passController.dispose();
    super.dispose();
  }
}
