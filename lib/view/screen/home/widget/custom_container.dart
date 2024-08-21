import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 114,
              width: 114,
              child: Card(
                color: Colors.red,
              ),
            ),
          ),
          CommonText(
            tittle: "Wash",
            color: CommonColor.blue,
            fSize: 21,
            fWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
