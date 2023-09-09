import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class Skills extends StatefulWidget {
  const Skills({super.key, required this.iconSize});

  final double iconSize;

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      // color: Colors.black,
      // height: mq.height - 100,

      constraints: BoxConstraints(
        minHeight: mq.height - 100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Skills',
            style: GoogleFonts.poppins(fontSize: 54),
          ),

          SizedBox(
            height: mq.height * .1,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                'assets/skill_logos/icons8-flutter.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-dart.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-java.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-kotlin.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-firebase.svg',
                width: widget.iconSize,
              ),
            ],
          ),

          SizedBox(
            height: mq.height * .07,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                'assets/skill_logos/icons8-html.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-css.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-javascript.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-c-programming.svg',
                width: widget.iconSize,
              ),
              SvgPicture.asset(
                'assets/skill_logos/icons8-python.svg',
                width: widget.iconSize,
              ),
            ],
          ),

          // SizedBox(height: mq.height,),
        ],
      ),
    );
  }
}
