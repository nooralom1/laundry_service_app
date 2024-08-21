import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158,
      child: Card(
        color: Colors.black38,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  height: 107,
                  width: 132,
                  color: Colors.red,
                ),
                const SizedBox(width: 10,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonText(tittle: "Daily use clothes",fSize: 25,fWeight: FontWeight.bold,),
                    CommonText(tittle: "T-shirts,Shirts,Pants",fSize: 14,fWeight: FontWeight.w600,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}