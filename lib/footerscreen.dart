import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
            mobile: VStack(
              ["Thanks for scroling !!".text.center.white.xl2.make()],
              crossAlignment: CrossAxisAlignment.center,
            ),
            web: HStack(
              ["Thanks for scroling !!".text.center.white.xl3.make()],
              alignment: MainAxisAlignment.spaceAround,
            ).w(context.safePercentWidth * 70).scale150().p16()),
        20.heightBox,
        [
          "Made with".text.white.make(),
          10.heightBox,
        ].hStack(),
        5.heightBox,
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset("assets/images/ff.png",
              width: 220, height: 80, fit: BoxFit.fill),
        )
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
