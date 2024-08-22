import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/widget/staricon.dart';

class CategoryViewCard extends StatelessWidget {
  const CategoryViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        color: Color(0xffa8c2d7),
        child: SizedBox(
          height: 124,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                color: Colors.white,
                child: SizedBox(
                  height: 100,
                  width: 100,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(tittle: "Name",fSize: 23,fWeight: FontWeight.w600,color: Colors.lightBlue,),
                  CommonText(tittle: "price",fWeight: FontWeight.bold,fSize: 18,color: Colors.black,),
                  Row(
                    children: [
                      StarIcon(),
                      StarIcon(),
                      StarIcon(),
                      StarIcon(),
                      StarIcon(),
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: CommonColor.blue,
                    size: 35,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
