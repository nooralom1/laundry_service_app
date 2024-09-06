
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/order_success.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/show_cart_products.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_loading_buttun.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/order_success/order_success.dart';

class ShowCartProducts extends StatefulWidget {
  const ShowCartProducts({super.key});

  @override
  State<ShowCartProducts> createState() => _ShowCartProductsState();
}

class _ShowCartProductsState extends State<ShowCartProducts> {
  @override
  Widget build(BuildContext context) {
    ShowCartProductsController controller =
        Get.put(ShowCartProductsController());
    OrderSuccessController orderSuccessController =
        Get.put(OrderSuccessController());
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    tittle: "Orders",
                    fSize: 25,
                    fWeight: FontWeight.bold,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(
                    tittle: "Wash & Iron",
                    fSize: 15,
                    fWeight: FontWeight.w600,
                    color: CommonColor.blue,
                  ),
                ],
              ),
              Obx(
                () => controller.isLoading.isTrue
                    ? const CircularProgressIndicator()
                    : SizedBox(
                        height: 260,
                        child: ListView.builder(
                          itemCount: controller.showCart.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                    child: SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.network(
                                          "${controller.showCart[index].image}"),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CommonText(
                                        tittle:
                                            "${controller.showCart[index].name}",
                                        fSize: 23,
                                        fWeight: FontWeight.w600,
                                        color: Colors.lightBlue,
                                      ),
                                      CommonText(
                                        tittle:
                                            "${controller.showCart[index].price}",
                                        fWeight: FontWeight.bold,
                                        fSize: 18,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: CommonColor.blue,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              if (controller.counter.value >
                                                  1) {
                                                controller.counter.value--;
                                              }
                                            },
                                            icon: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            )),
                                        CommonText(
                                            tittle:
                                                "${controller.counter.value}"),
                                        IconButton(
                                            onPressed: () {
                                              controller.counter.value++;
                                            },
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2, color: CommonColor.blue)),
                child: const Center(
                    child: CommonText(
                  tittle: "Total  Rs.110",
                  fSize: 15,
                  fWeight: FontWeight.w600,
                  color: CommonColor.blue,
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(
                    tittle: "Pickup",
                    fWeight: FontWeight.w600,
                    fSize: 20,
                    color: CommonColor.blue,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    tittle: "Nov 12,2019",
                    fSize: 15,
                    color: CommonColor.blue,
                  ),
                  CommonText(
                    tittle: "5:00 to 6:00pm",
                    fSize: 15,
                    color: CommonColor.blue,
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 180,
                      child: Image.asset("assets/images/Show_Cart.png",fit: BoxFit.fill,)),
                  const Positioned(
                    top: 40,
                    right: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          tittle: "Delivered by",
                          fWeight: FontWeight.w600,
                          fSize: 22,
                          color: CommonColor.blue,
                        ),
                        CommonText(
                          tittle: "1-2 Days",
                          fSize: 16,
                          color: CommonColor.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Obx(() => controller.isLoading.isFalse
                  ? CommonButton(
                      height: 45,
                      width: 176,
                      btnName: 'Place Order',
                      onTap: () {
                        orderSuccessController.nextPage();
                        Get.to(const OrderSuccess());
                      },
                    )
                  : const CommonLoadingButton(height: 45, width: 146))
            ],
          ),
        ),
      ),
    );
  }
}