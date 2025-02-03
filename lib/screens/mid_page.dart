import 'package:flutter/material.dart';
import 'package:my_designs/screens/fig1.dart';
import 'package:my_designs/widgets/font_widget.dart';
import 'package:my_designs/widgets/textfield.dart';

class MiddleButton extends StatelessWidget {
  const MiddleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0E1758),
                //Color(0xFF0E1758),
                // Color(0xFF0D1321),
                Color(0xFF0C0D0E),
              ],
              // stops:[0.12,0.18,0.24]
              stops: [
                0.1,
                0.2
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Edit Card row
              Padding(
                padding: const EdgeInsets.only(top: 52.0, left: 20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Image(
                          image: AssetImage('images/arrow-square-left.png'))),
                  const SizedBox(width: 15),
                  Xtext(text: 'Edit Card', fontSize: 24, color: Colors.white)
                ]),
              ),
              const SizedBox(height: 40),

              //VCB container
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 192,
                      width: 360,
                      //margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Color(0xFF0C0D0E),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xFF353846))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 16),
                            child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(image: AssetImage('images/v-logo.png')),
                                  const SizedBox(width: 8),
                                  Xtext(
                                      text: 'VCB Card',
                                      color: Color(0xFF6A6F87)),
                                ]),
                          ),
                          const Divider(
                            color: Color(0xFF353846),
                            endIndent: 140,
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Xtext(
                                text: 'Total',
                                color: Color(0xFF6A6F87),
                                fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Xtext(
                              text: '\$125.000',
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35.0, left: 16),
                            child: Xtext(
                                text:
                                    '1  2  3  9       3  7  9  6       2  9  3  8        1  3  8  5',
                                color: Color(0xFF6A6F87),
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 20,
                        right: 15,
                        child:
                            Image(image: AssetImage('images/pink-icon.png'))),
                    Positioned(
                        bottom: -15,
                        right: 30,
                        child: ClipRect(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFF0C0D0E),
                              borderRadius: BorderRadius.circular(28),
                              border: Border.all(color: Color(0xFF353846)),
                            ),
                            child: Center(
                                child: Image(
                                    image: (AssetImage('images/pencil.png')))),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Stack(clipBehavior: Clip.none, children: [
                const Divider(color: Color(0xFF353846)),
                Positioned(
                    top: -10,
                    left: 0,
                    right: 0,
                    child: Center(
                        child: Container(
                            width: 170,
                            decoration: BoxDecoration(color: Color(0xFF0C0D0E)),
                            child: Center(
                                child: Xtext(
                                    text: 'Information',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600)))))
              ]),
              const SizedBox(height: 20),
              XtextField(
                title: 'Cardholder name',
                imageUrl: 'images/profile-circle.png',
                hasSuffixIcon: false,
              ),
              const SizedBox(height: 10),
              XtextField(
                title: 'Card number',
                imageUrl: 'images/card-number-icon.png',
                hasSuffixIcon: false,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: XtextField(
                    title: 'Expiration date',
                    imageUrl: 'images/calendar.png',
                    hasSuffixIcon: true,
                  )),
                  SizedBox(
                      width: 170,
                      child: XtextField(
                          title: 'CVV',
                          imageUrl: 'images/card-number-icon.png',
                          hasSuffixIcon: false)),
                ],
              ),
              const SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: 350,
                  height: 52,
                  child: ElevatedButton(
                  
                    onPressed: () { debugPrint('The done button has been clicked');},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Color(0xFF0A28F4))
                      
                      ),
                    child: Xtext(text:'Done', color: Colors.white,fontSize:16)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
