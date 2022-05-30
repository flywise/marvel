import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:marvel_user/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ButtonMain extends StatelessWidget {
  String? btnname;
  Color? btncolor, btncolortext;
  String? btnColor;
  VoidCallback? onpress;

  ButtonMain(
      {Key? key, this.btnname, this.btncolor, this.btncolortext, this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 6 * SizerUtil.height / 100,
        width: 90.w,
        decoration: BoxDecoration(
          color: btncolor,
        ),
        child: Center(
            child: Text("$btnname")
                .text
                .fontWeight(FontWeight.bold)
                .color(btncolortext!)
                .letterSpacing(2)
                .uppercase
                .make()),
      ),
    );
  }
}
