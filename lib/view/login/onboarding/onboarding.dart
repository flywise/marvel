import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/login/login.dart';
import 'package:marvel_user/view/login/onboarding/onboarding_model.dart';
import 'package:marvel_user/view/login/signin.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/button_main.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currtpage = 0;

  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                    onTap: () {
                      Get.to(Login());
                    },
                    child: Text("SKIP")
                        .text
                        .color(Colors.grey)
                        .size(13.sp)
                        .end
                        .make()),
              ),
              5.h.heightBox,
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currtpage = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 15.h,
                              width: 30.w,
                              child: Image.asset(
                                contents[i].image!,
                                fit: BoxFit.cover,
                              )),
                          2.h.heightBox,
                          Text(
                            contents[i].title!,
                            style: const TextStyle(
                                color: Color(0xff010F07),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                fontSize: 25),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            contents[i].discription!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff868686), fontSize: 16),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      contents.length, (index) => buildDot(index, context))),
              3.h.heightBox,
              ButtonMain(
                onpress: () {
                  Get.to(Login());
                },
                btncolor: btn1,
                btnname: "sign in",
                btncolortext: Colors.white,
              ),
              2.h.heightBox,
              ButtonMain(
                onpress: () {
                  Get.to(SignIn());
                },
                btncolor: btn2,
                btnname: "sign up",
                btncolortext: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currtpage == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currtpage == index ? Colors.black : Color(0xff979797),
      ),
    );
  }
}
