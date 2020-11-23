import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_portofolio/colors.dart';

class MiddleScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Achivements.\n"
              .richText
              .withTextSpanChildren(["Conferences".textSpan.yellow400.make()])
              .xl4
              .white
              .make(),
          20.heightBox,
          Icon(
            AntDesign.Trophy,
            size: 50,
            color: Vx.white,
          ),
          20.widthBox,
          Expanded(
              child: VxSwiper(
                  items: [
                AchivementWidget(title: "Won Best paper award in ICECC2020"),
                AchivementWidget(title: "Won 3rd place in NCRASEM 2020"),
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

class AchivementWidget extends StatelessWidget {
  final String title;

  const AchivementWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(
            color: Coolers.primaryColor, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
