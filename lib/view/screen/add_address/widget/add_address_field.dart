import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';

class AddAddressField extends StatelessWidget {
  const AddAddressField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.location_on,
              color: CommonColor.blue,
            ),
            hintText: "Savitribhai Phule University,Shivagi Nagar",
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
