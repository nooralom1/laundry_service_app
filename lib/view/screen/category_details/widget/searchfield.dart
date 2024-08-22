import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 300,
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Here",
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.keyboard_voice),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
      ),
    );
  }
}