import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/home/home_page.dart';
import 'package:marvel_user/view/login/login.dart';
import 'package:marvel_user/view/widgets/bottom_nav.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:marvel_user/view/widgets/form_text_field.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                    preIcon: Icon(Icons.account_box),
                    hintTextForm: "Name",
                  ),
                  3.h.heightBox,
                  FormTextField(
                    pass: false,
                    preIcon: Icon(Icons.email),
                    hintTextForm: "Email address",
                  ),
                  3.h.heightBox,
                  FormTextField(
                    pass: true,
                    preIcon: Icon(Icons.key),
                    sufIcon: Icon(Icons.visibility),
                    hintTextForm: "Password",
                  ),
                  3.h.heightBox,
                  FormTextField(
                    pass: true,
                    preIcon: Icon(Icons.key),
                    sufIcon: Icon(Icons.visibility),
                    hintTextForm: "Confirm Password",
                  ),
                ],
              )),
              5.h.heightBox,
              ButtonMain(
                onpress: () {
                  Get.to(Bottom());
                },
                btncolor: btn1,
                btnname: "sign up",
                btncolortext: Colors.white,
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?")
                      .text
                      .color(Colors.grey)
                      .fontWeight(FontWeight.bold)
                      .make(),
                  2.w.widthBox,
                  InkWell(
                    onTap: () {
                      Get.to(Login());
                    },
                    child: Text("SIGN IN here")
                        .text
                        .black
                        .fontWeight(FontWeight.bold)
                        .make(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
