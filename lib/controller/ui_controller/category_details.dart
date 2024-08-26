

import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/api_service/category_details.dart';
import 'package:laundry_app_using_getx/model/category_details.dart';

class CategoryDetailsController extends GetxController{

  RxBool isLoading =true.obs;
  RxList<CategoryDetails> category = <CategoryDetails>[].obs;
  List<CategoryDetails> finalProductList = [];
  List<CategoryDetails> productList = [];

  @override
  void onInit() {
    getCategoryDetails();
    super.onInit();
  }

  getCategoryDetails()async{
    isLoading.value = true;
    var data= await CategoryDetailsService.categoryDetailsService();
    category.value = data?.categoryDetails??[];
    finalProductList.addAll(category);
    productList.addAll(finalProductList);
    isLoading.value = false;
  }

  searchFunction({required String searchText}) async {
    isLoading.value = true;
    productList = finalProductList
        .where((value) =>
    value.name!.toLowerCase().contains(searchText.toLowerCase())  ||
        value.price.toString().contains(searchText))
        .toList();
    isLoading.value = false;
  }
}