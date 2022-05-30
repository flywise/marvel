import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          3.h.heightBox,
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          height: 12.h,
                          width: 30.w,
                          child: Image.asset(
                            "lib/assets/images/burgur.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        4.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dominos Pizza").text.bold.make(),
                            1.h.heightBox,
                            Row(
                              children: [
                                Visibility(
                                  visible: false,
                                  child: Text("Close Soon")
                                      .text
                                      .color(Colors.red)
                                      .make(),
                                ),
                                2.w.widthBox,
                                Text("Pizza, Fast Food"),
                              ],
                            ),
                            Visibility(
                              visible: false,
                              child: Row(
                                children: [
                                  SizedBox(
                                      height: 4.h,
                                      width: 4.w,
                                      child: Image.asset(
                                          "lib/assets/images/discount.png")),
                                  3.w.widthBox,
                                  Text("Flat 20% off on all orders")
                                      .text
                                      .color(Colors.red)
                                      .make(),
                                ],
                              ),
                            ),
                            2.h.heightBox,
                            Container(
                              height: 0.1.h,
                              width: 50.w,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                            1.h.heightBox,
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 13.sp,
                                ),
                                2.w.widthBox,
                                Text("4.2"),
                                25.w.widthBox,
                                Text("32 MINS"),
                              ],
                            )
                          ],
                        ),
                      ]),
                      2.h.heightBox
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
