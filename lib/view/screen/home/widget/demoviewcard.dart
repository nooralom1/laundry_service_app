import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class DemoViewCard extends StatelessWidget {
  const DemoViewCard({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SizedBox(
            height: screenHeight*0.14,
            width: screenWidth*0.3,
            child: Image.network(image),
          ),
        ),
        CommonText(
          tittle: name,
          color: CommonColor.blue,
          fSize: 18,
          fWeight: FontWeight.bold,
        )
      ],
    );
  }
}
