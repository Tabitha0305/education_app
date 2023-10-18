import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // creating static data in lists

  List catNames = [
    "Category",
    'Classes',
    'Free Course',
    'BookStore'
    'Live Course',
    'LeaderBoard',
  ];

  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFDF),
    Color(0xFFFC7F7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667)
  ];
  List<Icon> catIcons = [
    Icon(Icons.category, color:Colors.white, size:30),
    Icon(Icons.video_library, color:Colors.white, size:30),
    Icon(Icons.assignment, color:Colors.white, size:30),
    Icon(Icons.store, color:Colors.white, size:30),
    Icon(Icons.play_circle_fill, color:Colors.white, size:30),
    Icon(Icons.emoji_events, color:Colors.white, size:30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ), 
            ), 
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                       size: 30,          
                       color: Colors.white,
                       ), // Icon
                       Icon(
                         Icons.notifications,
                         size: 30,
                         color: Colors.white,
                       ), // Icon
                      ],
                     ), // Row
                     SizedBox(height: 20),
                     Padding(padding: EdgeInsets.only(left: 3, bottom: 15)
                     child: Text(
                      "Hi programmer",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white,
                      ), // TextStyle
                     ), // Text
                     ), // padding
                     Container(
                      margin: EdgeInsets.only(top: 5,bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),

                      ), 
                      child: TextFormField(
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here....",
                        hintStyle: TextStyle(
                          color:Colors.black.withOpacity(0.5),
                        ), 
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        ), 
                        ), 
                      ), 
                     ), 
              ],
            ), 
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15,right: 15),
            child: Column(
              children: [
              GridView.builder(
                itemCount: catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                ), // SliverGridDelegateWithFixedCrossAxisCount
                 itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: catColors[index],
                          shape: BoxShape.circle,
                        ), 
                        child: Center(
                          child: catIcons[index],
                          ),
                      ), 
                      SizedBox(height: 10),
                      Text(
                        catNames[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ), 
                    ],
                  );

                 },
            ),
         ] ),), 
   ] )); 

  }
}

        











                
