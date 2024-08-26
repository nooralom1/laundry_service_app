import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/splash.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (context) {
        return Scaffold(
          backgroundColor: CommonColor.bgColor,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/splash.png',
                  ),
                  const CommonText(
                    tittle: "Laundry Service",
                    fSize: 36,
                    fWeight: FontWeight.bold,
                    color: Color(0xff007BE5),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
