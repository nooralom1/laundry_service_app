import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {

  const CommonText(
      {super.key,
      required this.tittle,
      this.color,
      this.fWeight,
      this.fSize,
      this.overflow,
      this.maxLines});

  final String tittle;
  final Color? color;
  final FontWeight? fWeight;
  final double? fSize;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(
          color: color ?? Colors.white,
          fontWeight: fWeight ?? FontWeight.normal,
          fontSize: fSize ?? 14,
          overflow: overflow ?? TextOverflow.ellipsis),
      maxLines: maxLines ?? 1,
    );
  }
}
