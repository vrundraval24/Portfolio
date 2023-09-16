import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';


class MobileSkills extends StatefulWidget {
  const MobileSkills({super.key, required this.iconSize});

  final double iconSize;

  @override
  State<MobileSkills> createState() => _MobileSkillsState();
}

class _MobileSkillsState extends State<MobileSkills> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(

      constraints: BoxConstraints(
        minHeight: mq.height * .9,
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Skills',
            style: GoogleFonts.poppins(fontSize: 34),
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
