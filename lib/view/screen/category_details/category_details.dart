import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/getx_controller/category_details.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_buttun.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/widget/categoryviewcard.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/widget/searchfield.dart';
import 'package:laundry_app_using_getx/view/screen/show_cart_products/show_cart_products.dart';

class CategoryDetailsPage extends StatefulWidget {
  const CategoryDetailsPage({super.key});

  @override
  State<CategoryDetailsPage> createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    CategoryDetailsController ctgryDtlsCntrl =
        Get.put(CategoryDetailsController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             SizedBox(
              height: screenHeight*0.065,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackButton(),
                SearchField(
                  onChanged: (String text) {
                    ctgryDtlsCntrl.searchFunction(searchText: text);
                  },
                )
              ],
            ),
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemCount: ctgryDtlsCntrl.category.length,
                  itemBuilder: (context, index) {
                    return CategoryViewCard(
                      image: ("${ctgryDtlsCntrl.category[index].image}"),
                      name: ('${ctgryDtlsCntrl.category[index].name}'),
                      price: ('${ctgryDtlsCntrl.category[index].price}'),
                      onPressed: () {
                        Get.snackbar("Message", "Add to cart successfully !");
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: CommonButton(
          height: screenHeight * 0.06,
          width: screenWidth,
          btnName: 'View Cart',
          onTap: () {
            Get.to(() =>  const ShowCartProducts());
          },
        ),
      ),
    );
  }
}
