import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/view/screen/home/home.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
