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
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: screenHeight * 0.18,
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
                    height: screenHeight * 0.14,
                    width: screenWidth * 0.25,
                    child: Image.network(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonText(
                          tittle: name,
                          fSize: screenWidth*0.06,
                          fWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                      CommonText(
                          tittle: title,
                          fSize: screenWidth*0.035,
                          fWeight: FontWeight.w500,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis)
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
