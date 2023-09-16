import 'package:flutter/material.dart';
import 'package:portfolio/mobile/mobile_home.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return const MobileHome();
  }
}
