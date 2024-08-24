
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/api_service/category_details.dart';
import 'package:laundry_app_using_getx/model/category_details.dart';

class CategoryDetailsController extends GetxController{

  RxBool isLoading =true.obs;
  RxList<CategoryDetails> category = <CategoryDetails>[].obs;

  @override
  void onInit() {
    getCategoryDetails();
    super.onInit();
  }

  getCategoryDetails()async{
    isLoading.value = true;
    var data= await CategoryDetailsService.categoryDetailsService();
    category.value = data?.categoryDetails??[];
    isLoading.value = false;
  }
}