import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/widget/staricon.dart';

class CategoryViewCard extends StatelessWidget {
  const CategoryViewCard({
    super.key, required this.image, required this.name, required this.price, required this.onPressed,
  });
  final String image;
  final String name;
  final String price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        color: const Color(0xffa8c2d7),
        child: SizedBox(
          height: 124,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(image),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(tittle: name,fSize: 23,fWeight: FontWeight.w600,color: Colors.lightBlue,),
                  CommonText(tittle: price,fWeight: FontWeight.bold,fSize: 18,color: Colors.black,),
                  const Row(
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
                  onPressed: onPressed,
                  icon: const Icon(
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
