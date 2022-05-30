import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/login/login.dart';
import 'package:marvel_user/view/login/resend_otp.dart';
import 'package:marvel_user/view/widgets/form_text_field.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/button_main.dart';

class MobileNumberVerify extends StatelessWidget {
  const MobileNumberVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            10.h.heightBox,
            Center(
              child: SizedBox(
                  height: 20.h,
                  width: 40.w,
                  child: Image.asset(
                    "lib/assets/images/logo.png",
                    fit: BoxFit.cover,
                  )),
            ),
            Center(
              child: Text("Foodie")
                  .text
                  .size(16.sp)
                  .uppercase
                  .fontWeight(FontWeight.bold)
                  .make(),
            ),
            2.h.heightBox,
            3.h.heightBox,
            Form(
                child: Column(
              children: [
                FormTextField(
                  pass: false,
                  preIcon: Icon(Icons.call),
                  hintTextForm: "Mobile Number",
                ),
              ],
            )),
            3.h.heightBox,
            ButtonMain(
              onpress: () {
                Get.to(ResendOtp());
              },
              btncolor: btn1,
              btnname: "NEXT",
              btncolortext: Colors.white,
            ),
            2.h.heightBox,
            InkWell(
              onTap: () {
                Get.to(Login());
              },
              child: Text("Already have an account?")
                  .text
                  .size(14.sp)
                  .color(Colors.grey)
                  .fontWeight(FontWeight.bold)
                  .make(),
            ),
            2.h.heightBox,
            Align(
              child: Column(
                children: [
                  Text("Connect with Social")
                      .text
                      .size(12.sp)
                      .color(Colors.grey)
                      .fontWeight(FontWeight.bold)
                      .make(),
                  4.h.heightBox,
                  SizedBox(
                    height: 5.h,
                    width: 30.w,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 5.h,
                              width: 8.w,
                              child:
                                  Image.asset("lib/assets/images/facebook.png")),
                          SizedBox(
                              height: 5.h,
                              width: 8.w,
                              child: Image.asset("lib/assets/images/google.png"))
                        ]),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
