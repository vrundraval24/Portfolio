import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class IconButtons extends StatefulWidget {
  const IconButtons({super.key});

  @override
  State<IconButtons> createState() => _IconButtonsState();
}

class _IconButtonsState extends State<IconButtons> {

  late Uri _url;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {

            _url = Uri.parse('https://www.linkedin.com/in/vrund-raval/');
            _launchUrl();

          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            size: 24,
          ),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {

            _url = Uri.parse('https://github.com/vrundraval24');
            _launchUrl();

          },
          icon: const FaIcon(
            FontAwesomeIcons.github,
            size: 24,
          ),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {

            _url = Uri.parse('');
            _launchUrl();

          },
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
            size: 24,
          ),
          color: Colors.black,
        ),
        // IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.youtube, size: 24,), color: Colors.black,),
      ],
    );
  }




  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }


}
