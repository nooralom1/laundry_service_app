import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/splash.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splash.png',
              ),
              const Text(
                "Laundry Service",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff007BE5)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
