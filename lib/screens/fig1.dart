// ignore_for_file: unused_import, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_designs/screens/fig2.dart';
import 'package:my_designs/screens/mid_page.dart';
import 'package:my_designs/widgets/Icon_container.dart';
import 'package:my_designs/widgets/font_widget.dart';
import 'package:my_designs/widgets/card_container.dart';




class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      int _selectedIndex = 0;

       final List<Widget> _screens =
       [
        const FigmaPage1(),
        const FigmaPage1(),
        const FigmaPage1(),
        const FigPage2(),
        
       ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context,  MaterialPageRoute(builder: (context) => MiddleButton()));
          debugPrint('The image has been clicked');},
        child: Image(image: AssetImage('images/navigation.png')) ,

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState((){
           _selectedIndex = index;
          });
        },
        backgroundColor: const Color(0xFF0C0D0E),
         type: BottomNavigationBarType.fixed,
        elevation: 0, 
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            activeIcon: FaIcon(FontAwesomeIcons.house),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bell),
            activeIcon: FaIcon(FontAwesomeIcons.solidBell),
            label: '',
          ),
        const BottomNavigationBarItem(icon: SizedBox(),label:''),
         
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bell),
            activeIcon: FaIcon(FontAwesomeIcons.solidBell),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            activeIcon: FaIcon(FontAwesomeIcons.solidUser),
            label: '',
          ),
        ],
              ),
      body:IndexedStack(
        index: _selectedIndex,
        children: _screens,
      )
    );
  }
}














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
      "sideIcon": 'images/money-sendgr.png'
    },
    {
      "text": 'Lily',
      "midIcon": null,
      'imageUrl': 'images/lily.png',
      "sideIcon": 'images/money-sendgr.png'
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

 final List<Map<String, dynamic>> list =[
  {
    'cardLog': 'images/logo1.png',
    "cardName": 'ACB Card',
    "bankName": 'Spotify',
    "plan":'Monthly Price',
    "cardIcon":'images/cardicon1.png',
    "amount":'-\$12.000',
    "sendRecieve":'images/tag1.png',
    "sendRecieveIcon": 'images/arrow-send.png',
    "color": Color(0xFFED0B4F)
  },
  {
    'cardLog': 'images/logo2.png',
    "cardName": 'TCB Card',
    "bankName": 'TCB Bank',
    "plan":'Monthly interest',
    "cardIcon":'images/cardicon2.png',
    "amount":'+\$18.000',
    "sendRecieve":'images/recieve-button.png',
    "sendRecieveIcon": 'images/arrow-received.png',
    "color": Color(0xFFA3FEA6)
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
            Stack(clipBehavior: Clip.none, children: [
              Container(
                  width: double.infinity,
                  
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42),
                      ),
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: Column(
                    children: [
                  //     const SizedBox(height:40),
                  //   // Image(image:AssetImage('images/view-button.png')),
                  // //  const SizedBox(height:2),

                    ListView.builder(
                       shrinkWrap: true, 
                       physics: NeverScrollableScrollPhysics(),
                      itemCount:list.length + 1,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(top:0,right:8.0,left:8,bottom:8),
                        child: index == 0 ?
                          Image(image:AssetImage('images/view-button.png'))
                        : CardWidget(
                          cardLogo: list[index - 1]["cardLog"], 
                          cardName: list[index-1]["cardName"], 
                          bankName: list[index-1]["bankName"], 
                          plan: list[index-1]["plan"], 
                          cardIcon: list[index-1]["cardIcon"], 
                          amount: list[index-1]["amount"], 
                          sendRecieve: list[index-1]["sendRecieve"], 
                          sendRecieveIcon: list[index-1]["sendRecieveIcon"],
                          color: list[index-1]["color"],
                          ),
                      ),
                    ),

                  
                  ])),



              Positioned(
                top: -15,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
              
                       width: 170,
                
                      color:Color(0xFF0C0D0E),
                      child: Center(
                        child: 
                       Text('History',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 24,
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w600,
                                backgroundColor: Colors.transparent
                                )
                                ),
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
