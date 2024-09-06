import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/auth/signin.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_loading_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/add_address/ad_address.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/signup.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/widget/NameField.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/widget/PassField.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    SigninController signinController = Get.put(SigninController());
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
                tittle: "Sign in",
                fWeight: FontWeight.bold,
                fSize: 25,
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
              NameField(nameController: signinController.nameController),
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
              PassField(nameController: signinController.passController),
              const SizedBox(
                height: 40,
              ),
              Obx(
                () => signinController.isLoading.value
                    ? const CommonLoadingButton(
                        height: 48,
                        width: double.infinity,
                      )
                    : CommonButton(
                        height: 48,
                        width: double.infinity,
                        btnName: "Login",
                        onTap: () async {
                          // FocusScope.of(context).unfocus();
                          // if(signUpFormKey.currentState!.validate()){
                          //   return;
                          // }
                          signinController.isLoading.value = true;
                          bool status = await signinController.signInService();
                          signinController.isLoading.value = false;
                          if (status) {
                            Get.off(const AdAddress());
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
                    tittle: "Don’t have an account?  ",
                    fWeight: FontWeight.w600,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => const Signup());
                      },
                      child: const CommonText(
                        tittle: "Sign up",
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
