import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/api_service/category.dart';
import 'package:laundry_app_using_getx/controller/api_service/demo.dart';
import 'package:laundry_app_using_getx/model/category.dart';
import 'package:laundry_app_using_getx/model/demo_data.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Categories> categories = <Categories>[].obs;
  RxList<DemoData> demoData = <DemoData>[].obs;

  @override
  void onInit() {
    getCategory();
    getDemo();
    super.onInit();
  }

  getCategory() async {
    isLoading.value = true;
    var category = await CategoryService.categoryService();
    categories.value = category?.categories ?? [];
    isLoading.value = false;
  }

  getDemo() async {
    isLoading.value = true;
    var demo = await DemoService.demoService();
    demoData.value = demo?.demoData ?? [];
    isLoading.value = false;
  }
}
