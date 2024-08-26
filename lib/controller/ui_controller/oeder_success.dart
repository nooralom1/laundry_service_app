import 'package:get/get.dart';
import 'package:laundry_app_using_getx/bottom_nav_bar.dart';

class OrderSuccessController extends GetxController {

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }

  Future nextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(() => const BottomNavBar());
  }
}
