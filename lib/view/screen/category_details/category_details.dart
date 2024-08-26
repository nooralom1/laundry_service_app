import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/category_details.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/widget/categoryviewcard.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/widget/searchfield.dart';

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
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const BackButton(),
                SearchField(
                  onChanged: (String text) {
                    ctgryDtlsCntrl.searchFunction(searchText: text);
                  },
                )
              ],
            ),
            const SizedBox(
              height: 20,
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
    );
  }
}
