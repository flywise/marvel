import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/login/create_new_password.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/otp_widget.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                5.h.heightBox,
                Center(
                  child: SizedBox(
                      height: 30.h,
                      width: 50.w,
                      child: Image.asset("lib/assets/images/otpicon1.png")),
                ),
                Text("Verification Code ").text.size(14.sp).bold.gray500.make(),
                1.h.heightBox,
                Text("Please type the verification code ")
                    .text
                    .bold
                    .gray500
                    .make(),
                0.5.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("send to your").text.bold.gray500.make(),
                    Text("   +91 9810098100").text.bold.orange600.make()
                  ],
                ),
                4.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtpWidget(
                      first: true,
                      last: false,
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    OtpWidget(
                      first: false,
                      last: false,
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    OtpWidget(
                      first: false,
                      last: false,
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    OtpWidget(
                      first: false,
                      last: true,
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                  ],
                ),
                5.h.heightBox,
                ButtonMain(
                  onpress: () {
                    Get.to(CreateNewPassword());
                  },
                  btnname: "Continue",
                  btncolor: btn1,
                  btncolortext: btn2,
                )
              ],
            ),
          ),
        ));
  }
}
