import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/mobile/mobile_navbar.dart';
import 'package:portfolio/nav_bar.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/skills.dart';

import '../main.dart';
import 'mobile_about.dart';
import 'mobile_skills.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    var key1 = GlobalKey();
    var key2 = GlobalKey();
    var key3 = GlobalKey();

    return Scaffold(


        appBar: AppBar(
          surfaceTintColor: Colors.white,
          toolbarHeight: mq.height * .1,
          flexibleSpace: MobileNavbar(key1: key1, key2: key2, key3: key3,),
        ),


        body: SingleChildScrollView(
          child: Column(
            children: [

              // About
              MobileAbout(key: key1),

              // Vertical gap between About and Skills
              // SizedBox(height: mq.height * .1),

              // Skills
              MobileSkills(key: key2, iconSize: mq.width * .15),


              // Vertical gap between Skills and Projects
              SizedBox(height: mq.height),

              // // Projects
              // Projects(key: key3),


            ],
          ),
        )


    );



  }
}
