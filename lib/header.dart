import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_portofolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Hi, I am\nPugazhenthi."
        .text
        .white
        .xl3
        .lineHeight(1.5)
        .size(context.isMobile ? 15 : 25)
        .bold
        .make();
    return SafeArea(
        child: VxBox(
            child: VStack([
      ZStack([
        Row(
          children: [
            if (context.isMobile) 50.heightBox else 15.heightBox,
            VStack([
              PictureWidget(),
              nameWidget,
              10.heightBox,
              VxBox()
                  .color(Coolers.accentColor)
                  .size(60, 10)
                  .make()
                  .shimmer(primaryColor: Coolers.accentColor),
              20.heightBox,
              SocialAccount(),
              20.heightBox,
            ]).pSymmetric(
              h: context.percentWidth * 10,
              v: 32,
            ),
            Expanded(
              child: VxResponsive(
                fallback: const Offstage(),
                large: AboutmeWidget()
                    .pOnly(left: 80)
                    .h(context.percentHeight * 70),
                medium: AboutmeWidget()
                    .pOnly(left: 80)
                    .h(context.percentHeight * 70),
              ),
            ),
          ],
        ).w(context.screenWidth),
      ])
    ])).size(context.screenWidth, context.percentHeight * 75).make());
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 120,
      backgroundImage: AssetImage(
        "assets/images/pugazhenthi.png",
      ),
    );
  }
}

class AboutmeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: VStack([
          [
            "About Me".text.white.widest.sm.size(20).xl.bold.make(),
            15.heightBox,
            "I am a Engineering (IT) student and I am a kind of person who loves to learn new technologies. I am very much interested towards creating solution to problems with the help of technology, that could enhance our life and create a better future."
                .text
                .white
                .size(15)
                .xl2
                .maxLines(5)
                .make()
                .w(context.isMobile
                    ? context.screenWidth
                    : context.percentWidth * 50)
          ].vStack()
        ], alignment: MainAxisAlignment.spaceEvenly));
  }
}

class SocialAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(AntDesign.instagram, color: Colors.white).mdClick(() {
        launch("https://instagram.com/Pugazhenthi_sp");
      }).make(),
      20.widthBox,
      Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch("https://github.com/Pugazhenthi-Pugazh");
      }).make(),
      20.widthBox,
      Icon(AntDesign.linkedin_square, color: Colors.white).mdClick(() {
        launch("https://www.linkedin.com/in/pugazhenthi-s");
      }).make(),
    ].hStack();
  }
}
