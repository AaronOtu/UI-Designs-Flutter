

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTest extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;

  const TextTest({super.key, required this.text, this.color, this.fontSize, this.fontWeight, this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.outfit(
          textStyle: TextStyle(color: color, fontSize: fontSize,fontWeight: fontWeight,decoration:decoration )),
    );
  }
}