import 'package:flutter/material.dart';
import 'package:web_app/desktopbody.dart';
import 'package:web_app/mobilebody.dart';
import 'package:web_app/responsiveLayout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
       desktopBody: DesktopBody(),
       ),
    );
  }
}