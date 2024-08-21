import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/signin.dart';
import 'package:laundry_app_using_getx/view/screen/authentication/signup.dart';
import 'package:laundry_app_using_getx/view/screen/welcome/widget/login_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                "assets/images/welcomecircleavatar.png",
              ),
              const SizedBox(
                height: 30,
              ),
              CommonButton(
                height: 46,
                width: 318,
                btnName: 'Create account',
                onTap: () {
                  Get.to(()=>const Signup());
                },
              ),
              const SizedBox(
                height: 30,
              ),
              LoginButton(
                onTap: () {
                  Get.to(()=>const Signin());
                },
              ),
            ],
          ),
          Positioned(
            top: 185,
            left: 35,
            child: Column(
              children: [
                Image.asset("assets/images/splash.png"),
                const CommonText(
                  tittle: "Laundry Service",
                  fWeight: FontWeight.bold,
                  fSize: 36,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CommonText(
                  tittle: "One stop destination for all a laundry work",
                  fWeight: FontWeight.w600,
                  fSize: 15,
                ),
                const CommonText(
                  tittle: "such as washing, ironing and dry",
                  fWeight: FontWeight.w600,
                  fSize: 15,
                ),
                const CommonText(
                  tittle: "cleaning",
                  fWeight: FontWeight.w600,
                  fSize: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
