import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/getx_controller/auth/signup.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
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
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
               SizedBox(
                height: screenHeight*0.05,
              ),
              const CommonText(
                tittle: "Sign Up",
                fWeight: FontWeight.bold,
                fSize: 25,
              ),
               SizedBox(
                 height: screenHeight*0.02,
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
               SizedBox(
                height: screenHeight*0.013,
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
               SizedBox(
                height: screenHeight*0.013,
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
               SizedBox(
                height: screenHeight*0.05,
              ),
              Obx(
                () => signupController.isLoading.value
                    ?  CommonLoadingButton(
                  height: screenHeight*0.06,
                        width: screenWidth,
                      )
                    : CommonButton(
                    height: screenHeight*0.06,
                        width: screenWidth,
                        btnName: "Register",
                        onTap: () async {
                          // FocusScope.of(context).unfocus();
                          // if(signUpFormKey.currentState!.validate()){
                          //   return;
                          // }
                          signupController.isLoading.value = true;
                          bool status = await signupController.signUpService();
                          signupController.isLoading.value = false;
                          if (status) {
                            Get.off(const Signin());
                          }
                        }),
              ),
               Divider(
                color: Colors.white,
                height: screenHeight*0.07,
                thickness: 2,
              ),
               SizedBox(
                height: screenHeight*0.013,
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
               SizedBox(
                height: screenHeight*0.013,
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
