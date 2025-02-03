import 'package:flutter/material.dart';
import 'package:my_designs/widgets/font_widget.dart';

class XtextField extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool  hasSuffixIcon;

  const XtextField({super.key, required this.title, required this.imageUrl, required this.hasSuffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Xtext(text: title, fontSize: 14, color: Colors.white),
          ),
          const SizedBox(height: 10),
          TextField(
            cursorColor: Color(0xFFA3FEA6),
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF17181C),
                prefixIcon: Image(image: AssetImage(imageUrl)),
                suffixIcon: hasSuffixIcon ? Image(image: AssetImage('images/arrow-down.png')) : null,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xFFA3FEA6))),

                    
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          )
        ],
      ),
    );
  }
}
