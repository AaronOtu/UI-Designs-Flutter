import 'package:flutter/material.dart';

class IconCon extends StatelessWidget {
  final String? midIcon;
  final String text;
  final String? sidIcon;
  final String imageUrl;

  const IconCon(
      {super.key,
      required this.text,
      this.midIcon,
      this.sidIcon,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
              borderRadius: BorderRadius.circular(20),
              //color: Color(0xFF17181C),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (midIcon != null)
                  Image.asset(
                    midIcon!,
                    width: 24,
                    height: 24,
                  ),
                if (sidIcon != null)
                  Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Color(0xFF0C0D0E)),
                        child: Image.asset(
                          sidIcon!,
                          width: 12,
                          height: 12,
                        ),
                      )),
              ],
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'ClashDisplay',
            fontSize: 12,
            color: Color(0xFF6A6F87),
          ),
        )
      ],
    );
  }
}
