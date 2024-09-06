import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.onChanged,
  });
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: screenHeight*0.055,
      width: screenWidth*0.68,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Search Here",
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.keyboard_voice),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
