import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/view/screen/add_address/ad_address.dart';
import 'package:laundry_app_using_getx/view/screen/home/home.dart';
import 'package:laundry_app_using_getx/view/screen/splash/splash.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
