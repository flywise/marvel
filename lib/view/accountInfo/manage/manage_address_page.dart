import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

class ManageAddress extends StatelessWidget {
  const ManageAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("MANAGE ADDRESS").text.black.make(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  height: 8.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: background,
                  ),
                  child: Text("SAVED ADDRESSES")
                      .text
                      .size(13.sp)
                      .uppercase
                      .color(Colors.grey)
                      .make()
                      .p12(),
                ),
                Container(
                  height: 10.h,
                  width: 100.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 3.2.h,
                          width: 8.w,
                          child: Image.asset("lib/assets/images/homeicon.png")),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("HOME").text.size(13.sp).make(),
                          0.5.h.heightBox,
                          Text("Washing B.C , Red Hillton West, United.......")
                              .text
                              .color(Colors.grey)
                              .size(11.sp)
                              .make(),
                          2.h.heightBox,
                          Row(
                            children: [
                              Text("EDIT").text.color(btn1).size(13.sp).make(),
                              10.w.widthBox,
                              Text("DELETE")
                                  .text
                                  .color(btn1)
                                  .size(13.sp)
                                  .make(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ).p12(),
                2.h.heightBox,
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                2.h.heightBox,
                Container(
                  height: 10.h,
                  width: 100.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 3.2.h,
                          width: 8.w,
                          child: Image.asset(
                            "lib/assets/images/shopping-bag.png",
                            color: Colors.black,
                          )),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WORK").text.size(13.sp).make(),
                          0.5.h.heightBox,
                          Text("Washing B.C , Red Hillton West, United.......")
                              .text
                              .color(Colors.grey)
                              .size(11.sp)
                              .make(),
                          2.h.heightBox,
                          Row(
                            children: [
                              Text("EDIT").text.color(btn1).size(13.sp).make(),
                              10.w.widthBox,
                              Text("DELETE")
                                  .text
                                  .color(btn1)
                                  .size(13.sp)
                                  .make(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ).p12(),
                2.h.heightBox,
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                2.h.heightBox,
                Container(
                  height: 10.h,
                  width: 100.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 3.2.h,
                          width: 8.w,
                          child: Image.asset("lib/assets/images/location.png")),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("OTHER").text.size(13.sp).make(),
                          0.5.h.heightBox,
                          Text("Washing B.C , Red Hillton West, United.......")
                              .text
                              .color(Colors.grey)
                              .size(11.sp)
                              .make(),
                          2.h.heightBox,
                          Row(
                            children: [
                              Text("EDIT").text.color(btn1).size(13.sp).make(),
                              10.w.widthBox,
                              Text("DELETE")
                                  .text
                                  .color(btn1)
                                  .size(13.sp)
                                  .make(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ).p12(),
                2.h.heightBox,
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              height: 5.h,
              width: 100.w,
              decoration: BoxDecoration(border: Border.all(color: btn1)),
              child: Center(
                child: Text("add new address")
                    .text
                    .size(12.sp)
                    .uppercase
                    .color(btn1)
                    .make(),
              ),
            ).p24()
          ],
        ));
  }
}
