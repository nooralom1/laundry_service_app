import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/bottom_nav_bar.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/add_address/widget/add_address_field.dart';

class AdAddress extends StatefulWidget {
  const AdAddress({super.key});

  @override
  State<AdAddress> createState() => _AdAddressState();
}

class _AdAddressState extends State<AdAddress> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
               SizedBox(
                height: screenHeight*0.05,
              ),
              Image.asset("assets/images/ad_address.png"),
              const CommonText(
                tittle: "We are available",
                fWeight: FontWeight.bold,
                fSize: 34,
              ),
              const CommonText(
                tittle: "in every Location",
                fWeight: FontWeight.bold,
                fSize: 34,
              ),
               SizedBox(
                height: screenHeight*0.04,
              ),
              const AddAddressField(),
               SizedBox(
                height: screenHeight*0.04,
              ),
              const CommonText(
                tittle: "Use Current Location",
                color: CommonColor.blue,
                fSize: 15,
                fWeight: FontWeight.w800,
              ),
               SizedBox(
                height: screenHeight*0.04,
              ),
              CommonButton(
                  height: screenHeight*0.06,
                  width: screenWidth*0.45,
                  btnName: "Add Address  +",
                  onTap: () {
                    Get.to(() => const BottomNavBar());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
