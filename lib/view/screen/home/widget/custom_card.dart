import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key, required this.image, required this.name, required this.title, required this.onTap,
  });
  final String image;
  final String name;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: const Color(0xffa8c3d7),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 107,
                    width: 132,
                    child: Image.network(image),
                  ),
                  const SizedBox(width: 10,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(tittle: name,fSize: 22,fWeight: FontWeight.bold,),
                      CommonText(tittle: title,fSize: 14,fWeight: FontWeight.w600,color: Colors.black,)
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