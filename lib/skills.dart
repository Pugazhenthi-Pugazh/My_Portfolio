import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_portofolio/colors.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Skills.\n".richText.xl4.white.make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(
                  items: [
                Image.asset("assets/images/c-prog.png",
                    height: 100, width: 120),
                Image.asset("assets/images/flutter_img.png"),
                Image.asset(
                  "assets/images/python.png",
                ),
              ],
                  height: 170,
                  enlargeCenterPage: true,
                  viewportFraction: context.isMobile ? 0.75 : 0.4,
                  autoPlay: true,
                  autoPlayAnimationDuration: 1.seconds))
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}
