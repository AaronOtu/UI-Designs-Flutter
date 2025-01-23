// ignore_for_file: unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_designs/widgets/text_widget.dart';

class DesignPage extends StatefulWidget {
  const DesignPage({super.key});

  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  final List<Map<String, dynamic>> items = [
    {
      "mainText": 'Days',
      "subText": "in training",
      "conText": "24 days in a row",
      "value": "255",
      "color1": Colors.deepOrange.withOpacity(0.1),
      "color2": Colors.yellow.withOpacity(0.07)
    },
    {
      "mainText": 'Completed',
      "subText": "courses",
      "conText": "2 in this month",
      "value": "12",
      "color1": Colors.green.withOpacity(0.1),
      "color2": const Color.fromARGB(255, 119, 215, 122).withOpacity(0.07)
    
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: _buildAppbarContainer(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Nice streak,\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'Andrew',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: ColoredCon(
                          mainText: items[index]['mainText'],
                          subText: items[index]['subText'],
                          value: items[index]['value'],
                          conText: items[index]['conText'],
                          color1: items[index]['color1'],
                          color2: items[index]['color2']
                          ),
                    );
                  }),
            ),
            const SizedBox(height:20),
            Container(
              width: double.infinity,
              height: 350,
              decoration:BoxDecoration(
                color:Colors.grey.shade300.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                  color: Colors.yellow.withOpacity(0.07),
                blurRadius:10,
                spreadRadius:1,
                  )
                ],
              ) ,
              child: Column(
                children:[]
              )
            )
          ],
        ),
      ),
    );
  }
}

final List<Color> color = [];

class ColoredCon extends StatelessWidget {
  final String mainText;
  final String subText;
  final String value;
  final String conText;
  final Color? color1;
  final Color? color2;

  const ColoredCon(
      {super.key,
      required this.mainText,
      required this.subText,
      required this.value,
      required this.conText,
      this.color1,
      this.color2
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 175,
      decoration: BoxDecoration(
          color: color1, 
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(
            color: color2 ?? Colors.transparent,
            blurRadius: 10,
            spreadRadius: 1,

          )]

          
          ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            TextTest(
              text: mainText,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            TextTest(text: subText, fontSize: 20, fontWeight: FontWeight.bold),
            const SizedBox(
              height: 20,
            ),
            TextTest(text: value, fontSize: 40, fontWeight: FontWeight.bold,),
            Container(
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 192, 189, 189),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: TextTest(text: conText, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container _buildAppbarContainer() {
  return Container(
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 30.0, right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: CircleAvatar(
                        backgroundImage: const AssetImage('images/user.jpg'),
                      )),
                ),
                Positioned(
                  bottom: 33,
                  left: 33,
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Center(
                          child: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ))),
                )
              ]),
              Container(
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Connect to class',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}
