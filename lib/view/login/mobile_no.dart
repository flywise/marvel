import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/login/otp.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:marvel_user/view/widgets/form_text_field.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            // Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            5.h.heightBox,
            Center(
              child: SizedBox(
                  height: 20.h,
                  width: 40.w,
                  child: Image.asset(
                    "lib/assets/images/logo.png",
                    fit: BoxFit.cover,
                  )),
            ),
            7.h.heightBox,
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
                Get.to(Otp());
              },
              btncolor: btn1,
              btnname: "NEXT",
              btncolortext: Colors.white,
            ),
            2.h.heightBox,
            Text("Don't have account?")
                .text
                .size(14.sp)
                .color(Colors.grey)
                .fontWeight(FontWeight.bold)
                .make()
          ]),
        ),
      ),
    );
  }
}
