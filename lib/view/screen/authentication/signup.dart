import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/auth/signup.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_loading_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/signin.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/widget/MailField.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/widget/NameField.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/widget/PassField.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.put(SignupController());
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const CommonText(
                tittle: "Sign Up",
                fWeight: FontWeight.w800,
                fSize: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonText(
                      tittle: "Name",
                      fSize: 19,
                      fWeight: FontWeight.w800,
                    ),
                  ],
                ),
              ),
              NameField(nameController: signupController.nameController),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonText(
                      tittle: "E-mail",
                      fSize: 19,
                      fWeight: FontWeight.w800,
                    ),
                  ],
                ),
              ),
              MailField(nameController: signupController.mailController),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonText(
                      tittle: "Password",
                      fSize: 19,
                      fWeight: FontWeight.w800,
                    ),
                  ],
                ),
              ),
              PassField(nameController: signupController.passController),
              const SizedBox(
                height: 40,
              ),
              Obx(
                () => signupController.isLoading.value
                    ? const CommonLoadingButton(
                        height: 48,
                        width: double.infinity,
                      )
                    : CommonButton(
                        height: 48,
                        width: double.infinity,
                        btnName: "Register",
                        onTap: ()async {
                          // FocusScope.of(context).unfocus();
                          // if(signUpFormKey.currentState!.validate()){
                          //   return;
                          // }
                          signupController.isLoading.value=true;
                          bool status = await signupController.signUpService();
                          signupController.isLoading.value=false;
                          if(status){
                            Get.off(const Signin());
                          }
                        }),
              ),
              const Divider(
                color: Colors.white,
                height: 60,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          "assets/logos/Instagram_logo_2016.svg.webp",
                        ),
                      ),
                      const CommonText(
                        tittle: "Instagram",
                        color: CommonColor.lightBlue,
                        fSize: 12,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                            "assets/logos/Facebook_Logo_(2019).png.webp"),
                      ),
                      const CommonText(
                        tittle: "Facebook",
                        color: CommonColor.lightBlue,
                        fSize: 12,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/logos/twitter.logo.png"),
                      ),
                      const CommonText(
                        tittle: "Twitter",
                        color: CommonColor.lightBlue,
                        fSize: 12,
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset("assets/images/signup&&signin.png"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CommonText(
                    tittle: "Already have an account?  ",
                    fWeight: FontWeight.w600,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => const Signin());
                      },
                      child: const CommonText(
                        tittle: "Sign in",
                        fWeight: FontWeight.w600,
                        color: CommonColor.lightBlue,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}