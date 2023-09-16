import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({super.key, this.key1, this.key2, this.key3});

  final key1;
  final key2;
  final key3;

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  late Uri _url;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Container(
      // color: Colors.pinkAccent,
      height: mq.height * .1,

      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Vrund.',
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          ),

          // IconButton(onPressed: (){}, icon: const Icon(Icons.menu, color: Colors.black,)),

          // DropdownButton(onChanged: (value){}, icon: Icon(Icons.menu), items: [],),

          PopupMenuButton<_MenuValues>(
              itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(
                        value: _MenuValues.about, child: Text('About')),
                    const PopupMenuItem(
                        value: _MenuValues.skills, child: Text('Skills')),
                    const PopupMenuItem(
                        value: _MenuValues.projects, child: Text('Projects')),
                    const PopupMenuItem(
                        value: _MenuValues.blogs, child: Text('Blogs')),
                    const PopupMenuItem(
                        value: _MenuValues.contact, child: Text('Contact')),
                  ],
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              surfaceTintColor: Colors.white,
            onSelected: (value){
                switch (value) {

                  case _MenuValues.about:
                    Scrollable.ensureVisible(widget.key1.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                    break;

                  case _MenuValues.skills:
                    Scrollable.ensureVisible(widget.key2.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);

                    break;

                  case _MenuValues.projects:
                    break;

                  case _MenuValues.blogs:

                    _url = Uri.parse('https://medium.com/@vrundraval24');
                    _launchUrl();

                    break;

                  case _MenuValues.contact:
                    break;

                }
            },
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

enum _MenuValues { about, skills, projects, blogs, contact }
