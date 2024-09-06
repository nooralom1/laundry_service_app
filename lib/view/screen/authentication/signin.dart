import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/getx_controller/auth/signin.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
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
                height: screenHeight*0.07,
              ),
              const CommonText(
                tittle: "Sign in",
                fWeight: FontWeight.bold,
                fSize: 25,
              ),
               SizedBox(
                height: screenHeight*0.04,
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
               SizedBox(
                height: screenHeight*0.015,
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
               SizedBox(
                height: screenHeight*0.052,
              ),
              Obx(
                () => signinController.isLoading.value
                    ?  CommonLoadingButton(
                        height: screenHeight*0.06,
                        width: screenWidth
                      )
                    : CommonButton(
                    height: screenHeight*0.06,
                        width: screenWidth,
                        btnName: "Login",
                        onTap: () async {
                          signinController.isLoading.value = true;
                          bool status = await signinController.signInService();
                          signinController.isLoading.value = false;
                          if (status) {
                            Get.off(const AdAddress());
                          }
                        }),
              ),
               Divider(
                color: Colors.white,
                height: screenHeight*0.07,
                thickness: 2,
              ),
               SizedBox(
                height: screenHeight*0.015,
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