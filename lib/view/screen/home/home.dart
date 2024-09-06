import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/getx_controller/home.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/category_details.dart';
import 'package:laundry_app_using_getx/view/screen/home/widget/categoryviewcard.dart';
import 'package:laundry_app_using_getx/view/screen/home/widget/demoviewcard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.065,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CommonText(
                      tittle: "Home",
                      fWeight: FontWeight.w800,
                      fSize: 22,
                    ),
                    CommonText(
                        tittle: "Block no.23,Saigaon,0043",
                        color: CommonColor.blue,
                        fSize: screenWidth*0.043,
                      overflow: TextOverflow.ellipsis,)
                  ],
                ),
                const CircleAvatar(
                  radius: 28,
                  child: Center(
                    child: Icon(
                      Icons.notifications,
                      color: CommonColor.blue,
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Obx(
            () => SizedBox(
              height: screenHeight * 0.22,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.demoData.length,
                    itemBuilder: (context, index) {
                      return DemoViewCard(
                        image: ("${homeController.demoData[index].image}"),
                        name: ("${homeController.demoData[index].name}"),
                      );
                    }),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonText(
                  tittle: "Category",
                  fWeight: FontWeight.bold,
                  fSize: 25,
                  color: CommonColor.blue,
                ),
              ],
            ),
          ),
          Obx(
            () => Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 8),
                child: ListView.builder(
                  itemCount: homeController.categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CategoryViewCard(
                        image: ("${homeController.categories[index].image}"),
                        name: ("${homeController.categories[index].name}"),
                        title: ("${homeController.categories[index].tittle}"),
                        onTap: () {
                          Get.to(() => const CategoryDetailsPage());
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
