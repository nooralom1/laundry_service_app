import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/add_address/widget/add_address_field.dart';
import 'package:laundry_app_using_getx/view/screen/home/home.dart';

class AdAddress extends StatefulWidget {
  const AdAddress({super.key});

  @override
  State<AdAddress> createState() => _AdAddressState();
}

class _AdAddressState extends State<AdAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 50,),
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
              const SizedBox(height: 30,),
              const AddAddressField(),
              const SizedBox(height: 30,),
              const CommonText(
                tittle: "Use Current Location",
                color: CommonColor.blue,
                fSize: 15,
                fWeight: FontWeight.w800,
              ),
              const SizedBox(height: 30,),
              CommonButton(
                  height: 48, width: 167, btnName: "Add Address  +", onTap: () {
                    Get.to(()=>const Home());
              })
            ],
          ),
        ),
      ),
    );
  }
}
