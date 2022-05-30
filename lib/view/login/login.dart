import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/home/home_page.dart';
import 'package:marvel_user/view/login/mobile_no.dart';
import 'package:marvel_user/view/login/mobile_no_verify.dart';
import 'package:marvel_user/view/login/resend_otp.dart';
import 'package:marvel_user/view/widgets/bottom_nav.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/form_text_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
              Text("Foodie")
                  .text
                  .size(16.sp)
                  .uppercase
                  .fontWeight(FontWeight.bold)
                  .make(),
              2.h.heightBox,
              Form(
                  child: Column(
                children: [
                  FormTextField(
                    pass: false,
                    preIcon: Icon(Icons.call),
                    hintTextForm: "Mobile Number",
                  ),
                  3.h.heightBox,
                  FormTextField(
                    pass: true,
                    preIcon: Icon(Icons.key),
                    sufIcon: Icon(Icons.visibility),
                    hintTextForm: "Password",
                  ),
                ],
              )),
              5.h.heightBox,
              ButtonMain(
                onpress: () {
                  Get.to(Bottom());
                },
                btncolor: btn1,
                btnname: "sign in",
                btncolortext: Colors.white,
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(MobileNumberVerify());
                    },
                    child: Text("Don't have an account?")
                        .text
                        .size(13.sp)
                        .color(Colors.grey)
                        .fontWeight(FontWeight.bold)
                        .make(),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(MobileNumber());
                    },
                    child: Text("Forgot Password?")
                        .text
                        .size(13.sp)
                        .color(Colors.grey)
                        .fontWeight(FontWeight.bold)
                        .make(),
                  ),
                ],
              ),
              2.h.heightBox,
              Text("Connect with Social")
                  .text
                  .size(12.sp)
                  .color(Colors.grey)
                  .fontWeight(FontWeight.bold)
                  .make(),
              1.h.heightBox,
              SizedBox(
                height: 5.h,
                width: 30.w,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 5.h,
                          width: 8.w,
                          child: Image.asset("lib/assets/images/facebook.png")),
                      SizedBox(
                          height: 5.h,
                          width: 8.w,
                          child: Image.asset("lib/assets/images/google.png"))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
