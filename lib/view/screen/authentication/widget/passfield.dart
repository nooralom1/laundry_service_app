import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';

class PassField extends StatelessWidget {
  const PassField({
    super.key,
    required this.nameController,
  });
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "Password",
          hintText: "***********",
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye_outlined)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: CommonColor.blue, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: CommonColor.blue, width: 2)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red, width: 2)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red, width: 2)),
        ),
        validator: (value) {
          if (value == null || value == "") {
            return "Name can't be emty !";
          }
          return null;
        },
      ),
    );
  }
}
