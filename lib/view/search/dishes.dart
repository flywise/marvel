import 'package:flutter/material.dart';
import 'package:marvel_user/constant.dart';

import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

class Dishes extends StatelessWidget {
  const Dishes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          3.h.heightBox,
          Expanded(
            // decoration: BoxDecoration(color: Colors.amber),
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Subway").text.size(12.sp).make(),
                        2.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //margin: EdgeInsets.only(bottom: 15.sp),
                                  height: 2.h,
                                  width: 4.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.green)),
                                  child: Center(
                                    child: Container(
                                      height: 1.h,
                                      width: 2.w,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                    ),
                                  ),
                                ),
                                5.w.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Double Choclate Chip")
                                        .text
                                        .size(12.sp)
                                        .make(),
                                    0.2.h.heightBox,
                                    Text("Cookie (1 Pc)")
                                        .text
                                        .size(12.sp)
                                        .make(),
                                    0.2.h.heightBox,
                                    Text("\$ 23").text.bold.size(12.sp).make(),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 4.h,
                              width: 20.w,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Center(
                                  child: Text("ADD")
                                      .text
                                      .color(Colors.green)
                                      .make()),
                            )
                          ],
                        ),
                        3.h.heightBox,
                        Row(
                          children: [
                            Text("View Full Menu").text.color(btn1).make(),
                            2.w.widthBox,
                            Icon(
                              Icons.arrow_forward_ios,
                              color: btn1,
                              size: 8.sp,
                            )
                          ],
                        ),
                        2.h.heightBox
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
