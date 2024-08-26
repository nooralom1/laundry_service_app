import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SizedBox(
            height: 114,
            width: 114,
            child: Image.network(image),
          ),
        ),
        CommonText(
          tittle: name,
          color: CommonColor.blue,
          fSize: 21,
          fWeight: FontWeight.bold,
        )
      ],
    );
  }
}
