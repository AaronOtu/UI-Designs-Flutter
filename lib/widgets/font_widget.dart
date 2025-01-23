

import 'package:flutter/material.dart';

class Xtext extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const Xtext(
      {
      super.key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.fontFamily
      
      });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: fontFamily ?? 'ClashDisplay',
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight));
  }
}
