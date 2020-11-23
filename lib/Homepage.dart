import 'package:flutter/material.dart';
import 'package:my_portofolio/Hobbies.dart';
import 'package:my_portofolio/colors.dart';
import 'package:my_portofolio/footerscreen.dart';
import 'package:my_portofolio/header.dart';
import 'package:my_portofolio/middlescreen.dart';
import 'package:my_portofolio/middlescreen2.dart';
import 'package:my_portofolio/skills.dart';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Coolers.primaryColor,
        child: VStack([
          HeaderScreen(),
          if (context.isMobile) AboutmeWidget().p16(),
          45.heightBox,
          MiddleScreen(),
          MiddleScreen2(),
          Skills(),
          Hobbies(),
          FooterScreen(),
        ]).scrollVertical());
  }
}
