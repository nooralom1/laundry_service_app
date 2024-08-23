import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/constants/color.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
    required this.nameController,
  });
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Full Name",
          hintText: "Mister.....",
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
