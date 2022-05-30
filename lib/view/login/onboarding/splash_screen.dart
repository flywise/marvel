import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/login/onboarding/onboarding.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: InkWell(
          onTap: () {
            Get.to(OnBoarding());
          },
          child: SizedBox(
              height: 25.h,
              width: 60.w,
              child: Image.asset(
                "lib/assets/images/logo1.png",
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
