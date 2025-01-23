// ignore_for_file: unused_import, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class FigmaPage1 extends ConsumerStatefulWidget {
  const FigmaPage1({super.key});

  @override
  ConsumerState<FigmaPage1> createState() => _FigmaPage1State();
}

class _FigmaPage1State extends ConsumerState<FigmaPage1> {
  final List<Map<String, dynamic>> items = [
    {
      "text": 'Add',
      "midIcon": 'images/add.png',
      'imageUrl': 'images/ellipse1.png',
      "sideIcon": null
    },
    {
      "text": 'James',
      "midIcon": null,
      'imageUrl': 'images/james.png',
      "sideIcon": 'images/money-send.png'
    },
    {
      "text": 'Lily',
      "midIcon": null,
      'imageUrl': 'images/lily.png',
      "sideIcon": 'images/money-send.png'
    },
    {
      "text": 'Draco',
      "midIcon": null,
      'imageUrl': 'images/draco.png',
      "sideIcon": 'images/money-recieve.png'
    },
    {
      "text": 'John',
      "midIcon": null,
      'imageUrl': 'images/james.png',
      "sideIcon": 'images/money-recieve.png'
    },
    {
      "text": 'John',
      "midIcon": null,
      'imageUrl': 'images/james.png',
      "sideIcon": 'images/money-recieve.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF0C0D0E),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Welcome Back',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        // Container blue, display amount
                        Stack(
                          children: [
                            Container(
                              height: 185,
                              width: 290,
                              decoration: BoxDecoration(
                                  color: Color(0xFF0F26C2),
                                  borderRadius: BorderRadius.circular(32)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 20),
                                    child: Text('Your Balance',
                                        style: TextStyle(
                                            fontFamily: 'ClashDisplay',
                                            fontSize: 14,
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 20),
                                    child: Text('\$125.000',
                                        style: TextStyle(
                                            fontFamily: 'ClashDisplay',
                                            fontSize: 40,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 20),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 25,
                                        width: 125,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white.withOpacity(0.16),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.5, right: 5.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('View your card',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'ClashDisplay',
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Image.asset(
                                                'images/arrow-right.png',
                                                width: 12,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              right: 1,
                              top: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32)),
                                child: SizedBox(
                                  width: 62,
                                  height: 62,
                                  child: Image(
                                    image: AssetImage('images/union.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        // Two containers
                        Column(
                          children: [
                            SenRecCon(
                                imageUrl: 'images/money-send.png',
                                text: 'Send'),
                            SenRecCon(
                                imageUrl: 'images/empty-wallet.png',
                                text: 'Recieve'),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 1, left: 10),
                  child: IconCon(
                    text: items[index]['text'],
                    imageUrl: items[index]['imageUrl'],
                    midIcon: items[index]['midIcon'],
                    sidIcon: items[index]['sideIcon'],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
            Stack(
              clipBehavior: Clip.none,
              children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(42),
                      topRight: Radius.circular(42),
                    ),
                    border:
                        Border(top: BorderSide(color: Colors.grey, width: 0.5))),
              ),
              Positioned(
                top: -55, 
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/based.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Center(
                        child: Text('History',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 24,
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w600)),
                      )),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}

class SenRecCon extends StatelessWidget {
  final String imageUrl;
  final String text;

  const SenRecCon({super.key, required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 85,
          width: 93,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color(0xFF17181C)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Image(image: AssetImage(imageUrl))),
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'ClashDisplay',
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
