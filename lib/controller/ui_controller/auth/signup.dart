import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/api_service/authentication/signup.dart';

class SignupController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  RxBool isPasswordEnable = true.obs;
  RxBool isLoading = false.obs;

  Future<bool> signUpService() async{
    bool status = await SignUpService.signUpService(
        email: mailController.text,
        name: nameController.text,
        password: passController.text);
    return status;
  }

  @override
  void dispose() {
    mailController.dispose();
    passController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    nameController.text;
    mailController.text;
    passController.text;
    super.onInit();
  }
}
