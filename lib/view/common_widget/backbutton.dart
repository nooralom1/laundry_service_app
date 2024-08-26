import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/bottom_nav_bar.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.to(() => const BottomNavBar());
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 40,
        ));
  }
}