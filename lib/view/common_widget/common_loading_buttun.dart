import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xff0A51EB)),
      child: const Center(
        child: CircularProgressIndicator(backgroundColor: Colors.white,
        color: CommonColor.blue,)
      ),
    );
  }
}
