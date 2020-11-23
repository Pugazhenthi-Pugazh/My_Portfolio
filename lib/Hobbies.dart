import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_portofolio/colors.dart';

class Hobbies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Hobbies ".richText.xl4.white.make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(
                  items: [
                Image.asset("assets/images/internet.png"),
                Image.asset("assets/images/games.png"),
                Image.asset("assets/images/music.png"),
              ],
                  height: 190,
                  enlargeCenterPage: true,
                  viewportFraction: context.isMobile ? 0.75 : 0.4,
                  autoPlay: true,
                  autoPlayAnimationDuration: 1.seconds))
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}
