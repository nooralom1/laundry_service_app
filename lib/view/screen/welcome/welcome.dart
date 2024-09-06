import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/signin.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/signup.dart';
import 'package:laundry_app_using_getx/view/screen/welcome/widget/login_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: Center(
        child: Column(
          children: [
             SizedBox(
              height: screenHeight*0.19,
            ),
            Image.asset("assets/images/splash.png"),
            const CommonText(
              tittle: "Laundry Service",
              fWeight: FontWeight.bold,
              fSize: 25,
            ),
            const SizedBox(
              height: 10,
            ),
            const CommonText(
              tittle: "One stop destination for all a laundry work",
              fWeight: FontWeight.w600,
              fSize: 17,
            ),
            const CommonText(
              tittle: "such as washing, ironing and dry",
              fWeight: FontWeight.w600,
              fSize: 17,
            ),
            const CommonText(
              tittle: "cleaning",
              fWeight: FontWeight.w600,
              fSize: 17,
            ),
             SizedBox(
              height: screenHeight*0.04,
            ),
            CommonButton(
              height: screenHeight*0.06,
              width: screenWidth*0.85,
              btnName: 'Create account',
              onTap: () {
                Get.to(() => const Signup());
              },
            ),
             SizedBox(
               height: screenHeight*0.035,
            ),
            LoginButton(
              onTap: () {
                Get.to(() => const Signin());
              },
            ),
          ],
        ),
      ),
    );
  }
}