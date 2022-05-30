import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/login/login.dart';
import 'package:marvel_user/view/widgets/form_text_field.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/button_main.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              7.h.heightBox,
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
              7.h.heightBox,
              Form(
                  child: Column(
                children: [
                  FormTextField(
                    pass: true,
                    preIcon: Icon(Icons.key),
                    sufIcon: Icon(Icons.visibility),
                    hintTextForm: "New Password",
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
              4.h.heightBox,
              ButtonMain(
                onpress: () {
                  Get.to(Get.to(Login()));
                },
                btncolor: btn1,
                btnname: "change",
                btncolortext: Colors.white,
              ),
              2.h.heightBox,
              Row(
                children: [
                  Text("Already have an account?").text.black.make(),
                  2.w.widthBox,
                  InkWell(
                    onTap: () {
                      Get.to(Login());
                    },
                    child: Text("SIGN  IN here")
                        .text
                        .black
                        .fontWeight(FontWeight.bold)
                        .make(),
                  ),
                ],
              ),
              2.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
