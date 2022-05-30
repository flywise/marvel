import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/accountInfo/payment/add_payment.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Wallet").text.black.make(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          2.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Wallet").text.size(13.sp).color(Colors.grey).make(),
              InkWell(
                onTap: () {
                  Get.to(AddAmount());
                },
                child: Container(
                  height: 4.h,
                  width: 20.w,
                  decoration: BoxDecoration(color: btn1),
                  child: Center(
                      child: 'add'.text.uppercase.center.bold.white.make()),
                ),
              )
            ],
          ).p12(),
          Container(
            height: 10.h,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Wallet Amount").text.size(14.sp).make(),
                  Text("\$150").text.bold.size(14.sp).color(btn1).make()
                ]).p12(),
          ),
          Text("History").text.size(13.sp).color(Colors.grey).make().p12(),
          Container(
            height: 12.h,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      1.h.heightBox,
                      Text("12-5-15, 5:00 AM").text.size(14.sp).make(),
                      1.h.heightBox,
                      Text("Credited").text.size(13.sp).color(btn1).make(),
                    ],
                  ),
                  Text("\$100").text.bold.size(14.sp).color(Colors.black).make()
                ]).p12(),
          ),
          2.h.heightBox,
          Container(
            height: 12.h,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      1.h.heightBox,
                      Text("12-5-15, 5:00 AM").text.size(14.sp).make(),
                      1.h.heightBox,
                      Text("Debited").text.size(13.sp).color(btn1).make(),
                    ],
                  ),
                  Text("\$100").text.bold.size(14.sp).color(Colors.black).make()
                ]).p12(),
          ),
        ],
      ),
    );
  }
}
