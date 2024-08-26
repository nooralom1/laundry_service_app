import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/api_service/show_cart_products.dart';
import 'package:laundry_app_using_getx/model/show_cart_products.dart';

class ShowCartProductsController extends GetxController {
  RxBool isLoading = false.obs;
  List<CartProducts> showCart = <CartProducts>[].obs;

  getShowCart() async {
    isLoading.value = true;
    var data = await ShowCartProductsService.showCartProductsService();
    isLoading.value = false;
    showCart = data?.cartProducts ?? [];
  }

  @override
  void onInit() {
    getShowCart();
    super.onInit();
  }
}
