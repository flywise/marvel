import 'package:flutter/material.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "lib/assets/images/cooking1.png",
                fit: BoxFit.cover,
              ),
              Text("GOOD FOOD IS ALWAYS COOKING").text.size(13.sp).make(),
              1.h.heightBox,
              Text("Please login and order our dishes.").text.gray700.make(),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.sp),
            height: 25.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.grey[350],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Account").text.size(15.sp).bold.make(),
                1.h.heightBox,
                Text("Login or signup to place your order"),
                2.h.heightBox,
                ButtonMain(
                  btncolor: btn1,
                  btnname: "Login",
                  btncolortext: btn2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
