import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/filter/filter.dart';
import 'package:marvel_user/view/location/location_page.dart';
import 'package:marvel_user/view/productdetails/productdetails.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> images = [
    'lib/assets/images/banner1.jpg',
    'lib/assets/images/banner2.jpg',
    'lib/assets/images/burgur.jpg',
    'lib/assets/images/banner1.jpg',
    'lib/assets/images/banner2.jpg',
    'lib/assets/images/burgur.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            shadowColor: btn2,
            backgroundColor: Colors.white,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(
                left: 15.sp,
                right: 15.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(LocationPage());
                            },
                            child: Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          1.w.widthBox,
                          SizedBox(
                              height: 2.h,
                              child: Image.asset(
                                  "lib/assets/images/downarrow.png"))
                        ],
                      ),
                      Text(
                        'Washing B.C, Green Town',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ).pOnly(top: 2.3.h),
                  InkWell(
                    onTap: () {
                      Get.to(Filter());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("FILTER").text.bold.make(),
                        //Icon(Icons.filter_alt),
                        1.w.widthBox,
                        SizedBox(
                            height: 2.h,
                            child: Image.asset("lib/assets/images/Filter.png"))
                      ],
                    ),
                  )
                ],
              ),
            )),
        body: Padding(
          padding: EdgeInsets.all(15.sp),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Let's impress you with our dishes"),
            2.h.heightBox,
            SizedBox(
              height: 20.h,
              width: 100.w,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, index) {
                    return Row(
                      children: [
                        2.w.widthBox,
                        Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        )
                      ],
                    );
                  }).px(3),
            ),
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("143 RESTAURANT"),
                Row(
                  children: [
                    Text("RELEVANCE "),
                    1.w.widthBox,
                    SizedBox(
                        height: 2.h,
                        child: Image.asset("lib/assets/images/downarrow.png"))
                  ],
                ),
              ],
            ),
            3.h.heightBox,
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(ProductDetails());
                          },
                          child: Row(children: [
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
                                    Text("Close Soon")
                                        .text
                                        .color(Colors.red)
                                        .make(),
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
                        ),
                        2.h.heightBox
                      ],
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
