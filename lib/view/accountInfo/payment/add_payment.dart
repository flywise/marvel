import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/accountInfo/payment/wallet.dart';
import 'package:marvel_user/view/location/track_location.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

class AddAmount extends StatelessWidget {
  const AddAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("ADD AMOUNT").text.black.make(),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Payment optoins")
                    .text
                    .size(13.sp)
                    .uppercase
                    .color(Colors.grey)
                    .make()
                    .p12(),
                1.h.heightBox,
                Container(
                  height: 15.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    height: 5.h,
                                    width: 10.w,
                                    child: Image.asset(
                                        "lib/assets/images/visa.png")),
                                5.w.widthBox,
                                Text("54321-XXXXXX-0986")
                                    .text
                                    .size(14.sp)
                                    .make(),
                              ],
                            ),
                            Visibility(
                              visible: true,
                              child: SizedBox(
                                  height: 2.h,
                                  width: 4.w,
                                  child: Image.asset(
                                      "lib/assets/images/checked.png")),
                            ),
                          ]).p12(),
                      Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                      2.h.heightBox,
                      Row(
                        children: [
                          Container(
                            height: 3.h,
                            width: 8.w,
                            child: Center(
                              child:
                                  Image.asset("lib/assets/images/tagicon.png"),
                            ),
                          ).px(12),
                          5.w.widthBox,
                          Text("add new card")
                              .text
                              .size(14.sp)
                              .color(btn1)
                              .uppercase
                              .make(),
                        ],
                      ),
                    ],
                  ),
                ),
                1.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("enter the amount")
                        .text
                        .size(13.sp)
                        .uppercase
                        .color(Colors.black)
                        .make(),
                    Container(
                      height: 5.h,
                      width: 35.w,
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 14.sp, color: btn1),
                            border: InputBorder.none,
                            hintText: '\$250'),
                      ).px(30),
                    )
                  ],
                ).p24(),
              ],
            ),
            ButtonMain(
              onpress: () {
                Get.to(Wallet());
              },
              btnname: 'PAY',
              btncolor: btn1,
              btncolortext: btn2,
            ).p24()
          ],
        ));
  }
}
