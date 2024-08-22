import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/controller/ui_controller/home.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/category_details.dart';
import 'package:laundry_app_using_getx/view/screen/home/widget/custom_card.dart';
import 'package:laundry_app_using_getx/view/screen/home/widget/custom_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: CommonColor.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        tittle: "Home",
                        fWeight: FontWeight.w800,
                        fSize: 22,
                      ),
                      CommonText(
                          tittle: "Block no.23,Saigaon,0043",
                          color: CommonColor.blue,
                          fSize: 17)
                    ],
                  ),
                  CircleAvatar(
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.demoData.length,
                    itemBuilder: (context, index) {
                      return CustomContainer(
                        image: ("${homeController.demoData[index].image}"),
                        name: ("${homeController.demoData[index].name}"),
                      );
                    }),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(
                    tittle: "Category",
                    fWeight: FontWeight.bold,
                    fSize: 33,
                    color: CommonColor.blue,
                  ),
                ],
              ),
              SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: ListView.builder(
                      primary: false,
                      physics: const PageScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: homeController.categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: CustomCard(
                            image:
                                ("${homeController.categories[index].image}"),
                            name: ("${homeController.categories[index].name}"),
                            title:
                                ("${homeController.categories[index].tittle}"),
                            onTap: () {
                              Get.to(()=>const CategoryDetails());
                            },
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
