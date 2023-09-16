
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key, this.key1, this.key2, this.key3});

  final key1;
  final key2;
  final key3;


  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  late Uri _url;


  //
  //
  // Color getForegroundColor(Set<MaterialState> states){
  //
  //   // const interactiveStates = <MaterialState>{
  //   //   MaterialState.pressed,
  //   //   MaterialState.hovered,
  //   //   MaterialState.selected
  //   // };
  //
  //   if(states.contains(MaterialState.pressed)){
  //     return Colors.blue;
  //   }else if(states.contains(MaterialState.hovered)){
  //     return Colors.green;
  //   }else if(states.contains(MaterialState.focused)){
  //     return Colors.red;
  //   }
  //   else{
  //     return Colors.black;
  //   }
  //
  //
  // }
  //
  //
  // Color getBackgroundColor(Set<MaterialState> states){
  //   return Colors.white;
  // }

  @override
  Widget build(BuildContext context) {

    mq = MediaQuery.of(context).size;

    //
    // final foregroundColor = MaterialStateProperty.resolveWith<Color>(getForegroundColor);
    // final backgroundColor = MaterialStateProperty.resolveWith<Color>(getBackgroundColor);
    //
    // final style = ButtonStyle(
    //   foregroundColor: foregroundColor,
    //   backgroundColor: backgroundColor
    // );

    return Container(
      // color: Colors.pinkAccent,
      height: 100,
      // height: mq.height * .12,

      padding: const EdgeInsets.symmetric(horizontal: 100),
      // padding: EdgeInsets.symmetric(horizontal: mq.width * .07),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Vrund.',
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
          ),


          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(widget.key1.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                  },
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'About',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          textStyle: const TextStyle(fontSize: 18)),
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(widget.key2.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Skills',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          textStyle: const TextStyle(fontSize: 18)),
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(widget.key3.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);

                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Projects',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          textStyle: const TextStyle(fontSize: 18)),
                    ),
                  )),
              TextButton(
                  onPressed: () {

                    _url = Uri.parse('https://medium.com/@vrundraval24');
                    _launchUrl();

                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Blogs',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          textStyle: const TextStyle(fontSize: 18)),
                    ),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Contact',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          textStyle: const TextStyle(fontSize: 18)),
                    ),
                  )),
              
              // SizedBox(
              //   width: mq.width * .05,
              // ),







            ],
          ),
        ],
      ),
    );
  }



  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }



}
