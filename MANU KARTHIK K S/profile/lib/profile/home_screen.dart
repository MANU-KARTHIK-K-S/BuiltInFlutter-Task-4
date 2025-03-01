import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'circle_avatar_widget.dart';

class HomePage extends StatefulWidget {
   HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          physics:BouncingScrollPhysics() ,
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Column(
                children: [
                   CircleAvatarWidget(
                    height: 200,
                    width: 200,
                    radius: 2500,
                    iconImage: "assets/manu.jpg",
                  ),
                    SizedBox(
                    height: 15,
                  ),
                  Text(
                    'MANU KARTHIK K S',
                    style: GoogleFonts.poppins(fontSize: 45,color: Colors.white),
                  ),
                  Text(
                    'Flutter Dev',
                    style: GoogleFonts.poppins(fontSize: 25,color: Colors.white),
                  ),
                  Container(
                    width: 150,
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                 Container(
                   padding: EdgeInsets.only(right: 15,left: 20),
                   child: Column(
                     children: [
                       Row(
                         children:  [
                           Text(
                             "Hi, I am a ",
                             style: TextStyle(fontSize: 20,color: Colors.white),
                           ),
                           Text(
                             "Flutter Developer ",
                             style: TextStyle(
                                 fontSize: 20,color: Colors.white, fontWeight: FontWeight.w700),
                           ),
                           Text(
                             "based in ",
                             style: TextStyle(
                               fontSize: 20,color: Colors.white
                             ),
                           ),
                         ],
                       ),
                       Row(
                         children:  [
                           Text(
                             "Alappuzha, Kerala. Connect, If You like to\nwork with me.",
                             style: TextStyle(fontSize: 20,color: Colors.white),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                  Container(
                    height: 50,
                    width: 350,
                    child:  Divider(
                      thickness: 2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launch(
                          "mailto:manukarthik097@gmail.com?subject=&body=");
                    },
                    child:  ListTile(
                      title: Text("manukarthik097@gmail.com",style: TextStyle(color: Colors.white),),
                      leading: CircleAvatarWidget(
                        width: 40,
                        height: 40,
                        radius: 0,
                        iconImage: "assets/icons/gmail.png",
                      ),
                    ),

                  ),
                   SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      launch("https://github.com/MANU-KARTHIK-K-S");
                    },
                    child:  ListTile(
                      title: Text("https://github.com/MANU-KARTHIK-K-S",style: TextStyle(color: Colors.white),),
                      leading: CircleAvatarWidget(
                        width: 40,
                        height: 40,
                        radius: 0,
                        iconImage: "assets/icons/github.png",
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                   ListTile(
                    title: Text("+91-9491234567",style: TextStyle(color: Colors.white),),
                    leading: CircleAvatarWidget(
                      width: 40,
                      height: 40,
                      radius: 0,
                      iconImage: "assets/icons/telephone.png",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


