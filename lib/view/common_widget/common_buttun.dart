import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.height,
    required this.width,
    required this.btnName, required this.onTap,
  });

  final double height;
  final double width;
  final String btnName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xff0A51EB)),
        child: Center(
          child: CommonText(
            tittle: btnName,
            fWeight: FontWeight.w800,
            fSize: 15,
          ),
        ),
      ),
    );
  }
}
