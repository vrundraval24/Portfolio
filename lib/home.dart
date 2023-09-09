import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/nav_bar.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/skills.dart';

import 'main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    var key1 = GlobalKey();
    var key2 = GlobalKey();
    var key3 = GlobalKey();

    return Scaffold(


        appBar: AppBar(
          surfaceTintColor: Colors.white,
          toolbarHeight: 100,
          // toolbarHeight: mq.height * .12,
          flexibleSpace: Navbar(key1: key1, key2: key2, key3: key3,),
        ),


        body: SingleChildScrollView(
          child: Column(
            children: [

              // About
              About(key: key1),

              // Vertical gap between About and Skills
              SizedBox(height: mq.height * .3),

              // Skills
              Skills(key: key2, iconSize: mq.width * .07),


              // Vertical gap between Skills and Projects
              SizedBox(height: mq.height * .3),

              // Projects
              Projects(key: key3),


            ],
          ),
        ));
  }
}
