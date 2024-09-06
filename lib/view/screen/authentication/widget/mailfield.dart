import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';

class MailField extends StatelessWidget {
  const MailField({
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
          hintText: "mister@gmail.com",
          labelText: "E-mail",
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
            return "E-mail can't be emty !";
          } else if (value.contains("@") || value.contains(".")) {
            return "Enter Valid E-mail !";
          }
          return null;
        },
      ),
    );
  }
}
