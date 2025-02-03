import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_designs/widgets/font_widget.dart';


class FigPage2 extends ConsumerStatefulWidget {

  const FigPage2({super.key});

  @override
  ConsumerState<FigPage2> createState() => _FigPage2State();
}

class _FigPage2State extends ConsumerState<FigPage2> {

   final List<Map<String,dynamic>> items =[
    {
      "icon":"images/share-icon.png",
      "text": "Share"
    },
    {
      "icon":"images/arrow-swap.png",
      "text": "Switch"
    },
    {
      "icon":"images/logout.png",
      "text": "Logout"
    }
   

  ];

 final List<Map<String, dynamic>> list =[
  {
    "leading":"images/phone-icon.png",
    "title":"Favorite Contact",
    "subtitle":"12 Contact",
    "trailing":"images/arrow.png"
  },
  {
    "leading":"images/card-icon.png",
    "title":"Cards",
    "subtitle":"2 Cards",
    "trailing":"images/arrow.png"
  },
  {
    "leading":"images/currency-icon.png",
    "title":"Currency",
    "subtitle":"United States Dollar",
    "trailing":"images/arrow.png"
  },

 ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C0D0E),
      appBar:  AppBar(
        backgroundColor: Color(0xFF0C0D0E) ,
        actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child:
                 Image.asset('images/more-circle.png', height:40, width:40,fit:BoxFit.fill)

        
              
      )],),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children:[ 
            Container(
            height:560,
            width: 335,
            decoration: BoxDecoration(
              color: Color(0xFF17181C),
              borderRadius: BorderRadius.circular(32)
            ),
            child:Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children:[
           const SizedBox(height:48),
           Xtext(text:'Devon Lane',color:Colors.white, fontSize:24),
           const SizedBox(height:10),
           Xtext(text: '(629) 599-0152', color:Color(0xFF6A6F87),fontSize:14),
           const SizedBox(height:20),
           Image(image: AssetImage('images/edit-button.png')),
           const SizedBox(height:10),
          //Image.asset('images/function.png')
         SizedBox(
          height:100,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context,index) => Padding(
              padding: const EdgeInsets.only(right:30, left:35,top:10),
              child: Center(
                child: RowWidget(
                  icon : items[index]['icon'],
                  text: items[index]['text']
                ),
              ),
            )
           ),
         ),

         SizedBox(
          height:260,
           child: ListView.builder(
            itemCount:list.length,
            itemBuilder:(contex,index) => Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0, bottom:5.0),
              child: Card(
                  
                color: Color(0xFF20222B),
                child: ListTile(
                leading: Image(image:AssetImage(list[index]['leading'])),
                title: Xtext(text: list[index]['title'], color:Colors.white),
                subtitle:Xtext(text:list[index]['subtitle'], color: Color(0xFF6A6F87)),
                trailing: Image(image:AssetImage(list[index]['trailing']))
                )
              ),
            )
           
           ),
         ),


          ]

            )
          ),
          Positioned(
              top: -165,
                left: 0,
                right: 0,
                child: Image(image: AssetImage('images/stack-user.png'))
          )
          ]
        ),
      )
     
    


    );
  }
}




class RowWidget extends StatelessWidget {
   final String icon;
   final String text;
  const RowWidget({super.key,required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Image(image:AssetImage(icon)),
        const SizedBox(height:8),
         Xtext(text:text,color:Color(0xFF6A6F87))
      ]
    );
  }
}