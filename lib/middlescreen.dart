import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_portofolio/colors.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "My Creations.\n"
              .richText
              .withTextSpanChildren(["(Projects)".textSpan.yellow400.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(
                  items: [
                ProjectWidget(title: "Flutter Blog Application"),
                ProjectWidget(title: "Mr.Techie\n(like instagram)"),
                ProjectWidget(title: "Text to Speech script\n(using python) "),
              ],
                  height: 170,
                  enlargeCenterPage: true,
                  viewportFraction: context.isMobile ? 0.75 : 0.4,
                  autoPlay: true,
                  autoPlayAnimationDuration: 1000.milliseconds))
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
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
