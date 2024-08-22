import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/home/home.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
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
                IconButton(
                    onPressed: () {
                      Get.to(()=>Home());
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 35,
                    )),
                SizedBox(
                  height: 46,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Here",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.keyboard_voice),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                flex: 3,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                            height: 124,
                            child: Card(
                              color: const Color(0xffa8c3d7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height:100,
                                    width: 100,
                                    child: Card(),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CommonText(tittle: "Name",fWeight: FontWeight.w600,fSize: 23,color: CommonColor.blue,),
                                      CommonText(tittle: "Price",fWeight: FontWeight.bold,fSize: 18,color: Colors.black),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.white,size: 18,),
                                          Icon(Icons.star,color: Colors.white,size: 18,),
                                          Icon(Icons.star,color: Colors.white,size: 18,),
                                          Icon(Icons.star,color: Colors.white,size: 18,),
                                          Icon(Icons.star,color: Colors.white,size: 18,),
                                        ],
                                      ),
                                    ],
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: CommonColor.blue,size: 40,))
                                ],
                              ),
                            ),
                          ));
                    }))
          ],
        ),
      ),
    );
  }
}
