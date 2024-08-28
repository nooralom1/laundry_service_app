import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: CommonColor.bgColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xff83c5fb),
                radius: 50,
                child: Center(
                  child: Icon(
                    Icons.check,
                    size: 50,
                    color: Color(0xff8080ff),
                  ),
                ),
              ),
              const CommonText(
                tittle: "Order Successful",
                color: CommonColor.blue,
                fSize: 33,
                fWeight: FontWeight.w800,
              ),
              const CommonText(
                tittle: "#123456Order no.",
                color: Colors.black,
                fWeight: FontWeight.w600,
                fSize: 26,
              ),
              Image.asset("assets/images/Order_success.png")
            ],
          ),
        );
  }
}
