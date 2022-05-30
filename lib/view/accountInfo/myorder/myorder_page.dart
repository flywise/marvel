import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/reorder/reorder.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("ORDERS").text.black.make(),
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
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Current orders")
                  .text
                  .size(13.sp)
                  .uppercase
                  .color(Colors.grey)
                  .make()
                  .p12(),
              1.h.heightBox,
              Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            2.h.heightBox,
                            Text("Subway").text.bold.size(13.sp).make(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Washington B.C")
                                    .text
                                    .color(Colors.grey)
                                    .make(),
                                Row(
                                  children: [
                                    Text("\$250").text.bold.size(14.sp).make(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 13.sp,
                                    )
                                  ],
                                )
                              ],
                            ),
                            2.h.heightBox,
                            DottedLine(),
                            2.h.heightBox,
                            Text("Spicy Prawn Tikka (1), chicken 65\" (2), mutton Balls(5),")
                                .text
                                .color(Colors.grey)
                                .make(),
                            0.5.h.heightBox,
                            Text("Spicy Prawn Tikka (1), chicken 65\" (2), mutton....")
                                .text
                                .color(Colors.grey)
                                .make(),
                            1.h.heightBox,
                            RichText(
                              text: const TextSpan(
                                // style: TextStyle(color: Colors.black, fontSize: 36),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Scheduled at',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text:
                                          '   Thu, Dec around 1:58 PM - 2:13 PM',
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                            ),
                            2.h.heightBox,
                            InkWell(
                              onTap: () {
                                Get.to(ReorderPage());
                              },
                              child: Container(
                                height: 3.h,
                                width: 25.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: btn1)),
                                child: Center(
                                    child: Text("REORDER")
                                        .text
                                        .size(8.sp)
                                        .color(btn1)
                                        .make()),
                              ),
                            ),
                            2.h.heightBox,
                            Divider(
                              height: 2,
                              color: Colors.black,
                            ),
                          ],
                        ).p12();
                      })),
              Text("Past orders")
                  .text
                  .size(13.sp)
                  .uppercase
                  .color(Colors.grey)
                  .make()
                  .p12(),
              1.h.heightBox,
              Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            2.h.heightBox,
                            Text("CCD").text.bold.size(13.sp).make(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Washington B.C")
                                    .text
                                    .color(Colors.grey)
                                    .make(),
                                Row(
                                  children: [
                                    Text("\$150").text.bold.size(14.sp).make(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 13.sp,
                                    )
                                  ],
                                )
                              ],
                            ),
                            2.h.heightBox,
                            DottedLine(),
                            2.h.heightBox,
                            Text("Spicy Prawn Tikka (1), chicken 65\" (2), mutton Balls(5),")
                                .text
                                .color(Colors.grey)
                                .make(),
                            0.5.h.heightBox,
                            Text("Spicy Prawn Tikka (1), chicken 65\" (2), mutton....")
                                .text
                                .color(Colors.grey)
                                .make(),
                            1.h.heightBox,
                            RichText(
                              text: const TextSpan(
                                // style: TextStyle(color: Colors.black, fontSize: 36),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Scheduled at',
                                      style: TextStyle(color: Colors.black)),
                                  TextSpan(
                                      text:
                                          '   Thu, Dec around 1:58 PM - 2:13 PM',
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                            ),
                            2.h.heightBox,
                            Container(
                              height: 3.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                  border: Border.all(color: btn1)),
                              child: Center(
                                  child: Text("REORDER")
                                      .text
                                      .size(8.sp)
                                      .color(btn1)
                                      .make()),
                            ),
                            2.h.heightBox,
                            Divider(
                              height: 2,
                              color: Colors.black,
                            ),
                          ],
                        ).p12();
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
