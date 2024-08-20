
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/view/screen/welcome/welcome.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // late AnimationController animationController;
  // late Animation<double> animation;

  @override
  void onInit() {
    // animationInitialization();
    nextPage();
    super.onInit();
  }
  Future nextPage() async {
    Future.delayed(const Duration(seconds: 3));
    Get.to(()=>const Welcome());
  }

  // animationInitialization() {
  //   animationController =
  //       AnimationController(vsync: this, duration: const Duration(seconds: 2));
  //   animation =
  //       CurvedAnimation(parent: animationController, curve: Curves.easeOut)
  //           .obs
  //           .value;
  //   animation.addListener(() => update());
  //   animationController.forward();
  // }
}