import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class CategoryViewCard extends StatelessWidget {
  const CategoryViewCard({
    super.key,
    required this.image,
    required this.name,
    required this.title,
    required this.onTap,
  });
  final String image;
  final String name;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: const Color(0xffa8c3d7),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(image,fit: BoxFit.fill,),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonText(
                        tittle: name,
                        fSize: 20,
                        fWeight: FontWeight.bold,
                      ),
                      CommonText(
                        tittle: title,
                        fSize: 13,
                        fWeight: FontWeight.w500,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
