import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';


class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {

    mq = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: mq.height * .1,),

        Text('Projects', style: GoogleFonts.poppins(fontSize: 54),),

        SizedBox(height: mq.height * .1,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: mq.width * .25, height: mq.height * .5, color: Colors.black,),
            Container(width: mq.width * .25, height: mq.height * .5, color: Colors.black,),
            Container(width: mq.width * .25, height: mq.height * .5, color: Colors.black,),
          ],
        ),

        const SizedBox(height: 100,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: mq.width * .25, height: mq.height * .5, color: Colors.black,),
            Container(width: mq.width * .25, height: mq.height * .5, color: Colors.black,),
            Container(width: mq.width * .25, height: mq.height * .5, color: Colors.black,),
          ],
        ),

        const SizedBox(height: 200,)
      ],
    );
  }
}
