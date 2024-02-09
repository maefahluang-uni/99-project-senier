import 'package:flutter/material.dart';
import 'package:sj_verdemo/comonenets/Travelcard.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

// ignore: use_key_in_widget_constructors
class TravelApp extends StatefulWidget {

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  
  List<String>urls=[
    "https://media.discordapp.net/attachments/884449013208846360/1076882528541085767/81461362_531832840761583_2510223649378664448_n.jpg?width=1361&height=909",
    "https://media.discordapp.net/attachments/884449013208846360/1076882528847282236/81591465_531832830761584_3074170108227092480_n.jpg?width=1361&height=909", 
    "https://media.discordapp.net/attachments/884449013208846360/1076882529468030996/81772173_531832894094911_748127245050052608_n.jpg?width=606&height=908",
    "https://media.discordapp.net/attachments/884449013208846360/1076882657570467890/242127285_931436554134541_812641407426196872_n.jpg?width=1361&height=909",
    "https://media.discordapp.net/attachments/884449013208846360/1076882657906016447/242048044_931436467467883_3004090127121911417_n.jpg?width=1361&height=909",
    "https://media.discordapp.net/attachments/884449013208846360/1076882734171050034/241231403_922523365025860_8432790228829136308_n.jpg",
    "https://media.discordapp.net/attachments/884449013208846360/1076882734452052088/241324239_922523421692521_4112321104748366527_n.jpg?width=681&height=908",
    "https://media.discordapp.net/attachments/884449013208846360/1076882734754054195/241204021_922523411692522_956994268100379794_n.jpg?width=1212&height=909",
    "https://media.discordapp.net/attachments/884449013208846360/1076882735198654564/241326494_922523355025861_8376423161794510217_n.jpg",
    "https://media.discordapp.net/attachments/884449013208846360/1076884335380136007/67620899_424538621491006_6071872584356462592_n.jpg?width=1364&height=909",
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructor
      backgroundColor:  Color(0xFFF6F7FF),
      appBar:AppBar(
        elevation:0.0,
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
          IconButton(
            onPressed: (){},
             // ignore: prefer_const_constructors
             icon: Icon(
              Icons.menu,
             color:Colors.black,
             ),
             ),
        ],
      ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
          Text(
            'SJ Residence ',
          style: TextStyle(
            color:Colors.black,
            fontSize: 26.0,
            fontWeight: FontWeight.w600,
            ),
            ),
            Text(
            'Pick your destination',
          style: TextStyle(
            color:Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            ),
            ),
           SizedBox(
            height:20.0,
           ),
           
           Material(
            elevation: 10.0,
            borderRadius: BorderRadius.circular(30.0),
            shadowColor: Color(0x55434343),

             child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
             decoration: InputDecoration(
             hintText:"Search province...",
             prefixIcon: Icon(
              Icons.search,
              color:Colors.black54),
              border: InputBorder.none,
              ),
              ),
           ),
           // ignore: prefer_const_constructors
           SizedBox(height:30.0),
           DefaultTabController(
           length:3,
           child:Expanded(
            child: Column(
              children: [
                TabBar(
                  indicatorColor:Color(0xFFFE8C68),
                  unselectedLabelColor: Color(0xFF555555),
                  labelColor: Color(0xFFFE8C68),
                  labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  tabs:[
                    Tab(
                      text:"Daily"
                    ),
                    Tab(
                      text:"Monthly"
                    ),
                    Tab(
                      text:"Fitness"
                    ),
        
                  
                  ],
                  ),
                  SizedBox(
                    height: 20.0,),
                    Container(
                      height:300.0,
                      child:TabBarView(
                        children: [
                          Container(
                            child:ListView(
                            scrollDirection: Axis.horizontal,
                            children:[
                                travelCard(urls[0], "New", "2 bed",0),
                                travelCard(urls[5], "Near the stairs", "floor 2",0),
                                travelCard(urls[2], "Ready to move in", "20% off", 0),
                            ],
                            ),
                            
                          ),
                               Container(
                            child:ListView(
                            scrollDirection: Axis.horizontal,
                            children:[
                               travelCard(urls[6], "Single room", "1 bed", 0),
                                travelCard(urls[8], "Special room",
                                    "near the pool", 0),
                            ],
                            ),
                          ),
                      Container(
                        child:ListView(
                          scrollDirection: Axis.horizontal,
                          children:[],
                        ),
                      ),
                    ],
                  ),
                ),
               ],
              ),
            ),
          )
        ],
      ),
    ),
   );
  }
}