import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../icon_buttons.dart';
import '../main.dart';


class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {

  late Uri _url;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Container(

      // color: Colors.redAccent,
      
      padding: const EdgeInsets.symmetric(horizontal: 20),


      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: mq.height * .9
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            // Profile pic
            Image.asset('assets/images/Vrund Raval ultra.png'),


            // All text
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: RichText(
                      text: TextSpan(
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 18),
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: "Hi,\n",
                              style: GoogleFonts.happyMonkey(
                                  textStyle: const TextStyle(fontSize: 34)),
                            ),
                            TextSpan(
                              text: "I'm Vrund Raval\n\n",
                              style: GoogleFonts.happyMonkey(
                                  textStyle: const TextStyle(fontSize: 34)),
                            ),
                            TextSpan(
                              text: "An Android Developer\n",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 44)),
                            ),
                            TextSpan(
                              text:
                              "Crafting user-friendly mobile experiences that \nmake life easier. Passionate about turning \nideas into sleek, functional apps.",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 24)),
                            ),
                          ])),
                ),

              ],
            ),



            // Download resume button
            SizedBox(
              width: mq.width,
              child: OutlinedButton(

                onPressed: () {

                  _url = Uri.parse('https://drive.google.com/file/d/1AZOP2DYHQlaExPS5q1wPW4fd43Nw8lW1/view?usp=sharing');
                  _launchUrl();

                },
                style: ButtonStyle(
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(
                            color: Colors
                                .black) // Adjust the radius as needed
                    ),
                  ),
                ),
                child: const Text(
                  'Download Resume',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),


            //Icon buttons
            const Row(
              children: [
                Expanded(child: IconButtons()),
              ],
            ),

          ],
        ),
      ),
    );
  }


  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
