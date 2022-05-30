import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("NOTIFICATIONS").text.black.make(),
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Container(
              height: 13.h,
              width: 100.w,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(
                    2.0,
                    2.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 1,
                )
              ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("10% Offer for veg orders")
                        .text
                        .bold
                        .size(13.sp)
                        .make(),
                    0.5.h.heightBox,
                    Text("sept 08, 2 2017").text.bold.color(Colors.grey).make(),
                    2.h.heightBox,
                    Text("Use Code AD123")
                        .text
                        .bold
                        .size(13.sp)
                        .color(btn1)
                        .make(),
                  ]).p12(),
            ),
          )
        ],
      ),
    );
  }
}
