import 'package:flutter/material.dart';
import 'package:my_designs/widgets/font_widget.dart';


class CardWidget extends StatelessWidget {
   final String cardLogo;
   final String bankName;
   final String cardName;
   final String amount;
   final String plan;
   final String cardIcon;
   final String sendRecieve;
   final String sendRecieveIcon;
   final Color? color;


  const CardWidget({
   super.key, 
   required this.cardLogo,
   required this.cardName,
   required this.bankName,
   required this.plan,
   required this.cardIcon,
   required this.amount,
   required this.sendRecieve,
   required this.sendRecieveIcon,
   this.color,
   
   });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 130,
      width:380,
     decoration: BoxDecoration(
      color: Color(0xFF17181C),
      borderRadius: BorderRadius.circular(32)
     ),
    child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
          Row(children:[ Image(image:AssetImage(cardLogo)),const SizedBox(width:5),Xtext(text:cardName,color:Color(0xFF6A6F87))]),
          Xtext(text:amount, color:color, fontSize:18, fontWeight: FontWeight.bold,),
          Image(image:AssetImage(sendRecieve))
                ]
          ),
        ),
      
      Stack(
        clipBehavior: Clip.none,
        children:[ 
      Container(
      height:105,
      width:200,
      decoration: BoxDecoration(
        color:Color(0xFF20222B),
        borderRadius:BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image:AssetImage(cardIcon)),
        
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Xtext(text:bankName,fontSize:16, color:Colors.white,fontWeight:FontWeight.bold),
                const SizedBox(height:8.0),
                Xtext(text:plan, fontSize:12,color:Color(0xFF6A6F87))
              ]
            )
          ],
        ),
      ),
        ),
      
        Positioned(
      left: -50,
      top:0,
      bottom:0,
      child: Image(image:AssetImage(sendRecieveIcon))
        )
      
      
      
      
        ]
      )
      
      
      
      
        ],
      ),
    )
    );
  }
}