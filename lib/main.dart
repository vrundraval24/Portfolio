import 'package:flutter/material.dart';
import 'package:portfolio/responsive/desktop.dart';
import 'package:portfolio/responsive/mobile.dart';
import 'package:portfolio/responsive/responsive_layouts.dart';
import 'package:portfolio/responsive/tablet.dart';

late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Portfolio - Vrund Raval',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const ResponsiveLayouts(desktop: Desktop(), mobile: Mobile(), tablet: Tablet()),
    );
  }
}
