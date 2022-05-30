import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/order/order_page.dart';
import 'package:marvel_user/view/productdetails/productview/productview.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isvisibility = false;
  bool ismenu = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 28.4.h,
                        width: 100.w,
                        child: Image.asset(
                          'lib/assets/images/cakeshop.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        height: 28.4.h,
                        width: 100.w,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.4)),
                      ),
                      Container(
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.sp),
                                bottomRight: Radius.circular(20.sp))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    )),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon: Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ],
                            ).pSymmetric(h: 5.w),
                            15.h.heightBox,
                            Text("Cake Wave")
                                .text
                                .bold
                                .size(13.sp)
                                .white
                                .make()
                                .pSymmetric(h: 5.w),
                            Text("Italian cakes")
                                .text
                                .white
                                .make()
                                .pSymmetric(h: 5.w)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star),
                              Text("4.8").text.bold.size(13.sp).black.make()
                            ],
                          ),
                          Text("    1555 Rating").text.size(8.sp).gray700.make()
                        ],
                      ),
                      Column(
                        children: [
                          Text("32 MINS"),
                          Text("Delivery Time").text.size(8.sp).gray700.make()
                        ],
                      )
                    ],
                  ).p16(),
                  DottedLine(),
                  2.h.heightBox,
                  Text("featured products")
                      .text
                      .uppercase
                      .size(15.sp)
                      .make()
                      .px16(),
                  2.h.heightBox,
                  SizedBox(
                    height: 50.h,
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(ProductView());
                                },
                                child: SizedBox(
                                    height: 20.h,
                                    width: 100.w,
                                    child: Image.asset(
                                      "lib/assets/images/banner2.jpg",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 2.h,
                                        width: 4.w,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: Color(0xff591815),
                                        )),
                                        child: Center(
                                          child: Container(
                                            height: 1.h,
                                            width: 2.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xff591815),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.sp)),
                                          ),
                                        ),
                                      ),
                                      3.w.widthBox,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          2.h.heightBox,
                                          Text("Strawberry Frozen")
                                              .text
                                              .size(13.sp)
                                              .make(),
                                          0.5.h.heightBox,
                                          Text("\$220"),
                                        ],
                                      )
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isvisibility = !isvisibility;
                                        ismenu = !ismenu;
                                      });
                                    },
                                    child: Container(
                                        height: 3.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: Colors.grey,
                                        )),
                                        child: Center(
                                            child: Text("ADD")
                                                .text
                                                .color(Colors.green)
                                                .make())),
                                  )
                                ],
                              ),
                            ],
                          ).p16();
                        }),
                  ),
                  Container(
                    height: 28.4.h,
                    width: 100.w,
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cakes")
                              .text
                              .color(Colors.black)
                              .size(13.sp)
                              .bold
                              .make(),
                          1.h.heightBox,
                          Expanded(
                            child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 2.h,
                                                width: 4.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                  color: Color(0xff591815),
                                                )),
                                                child: Center(
                                                  child: Container(
                                                    height: 1.h,
                                                    width: 2.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff591815),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.sp)),
                                                  ),
                                                ),
                                              ),
                                              3.w.widthBox,
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  2.h.heightBox,
                                                  Text("Strawberry Frozen")
                                                      .text
                                                      .size(13.sp)
                                                      .make(),
                                                  0.5.h.heightBox,
                                                  Text("\$220"),
                                                ],
                                              )
                                            ],
                                          ),
                                          Container(
                                              height: 3.h,
                                              width: 20.w,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                color: Colors.grey,
                                              )),
                                              child: Center(
                                                  child: Text("ADD")
                                                      .text
                                                      .color(Colors.green)
                                                      .make()))
                                        ],
                                      ),
                                    ],
                                  ).p16();
                                }),
                          ),
                        ]).p16(),
                  ),
                  2.h.heightBox,
                  Visibility(
                    visible: ismenu,
                    child: Center(
                      child: Container(
                        height: 5.h,
                        padding: EdgeInsets.all(10.sp),
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.sp),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(
                                2.0,
                                2.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(child: Text("MENU").text.bold.make()),
                      ),
                    ),
                  ),
                  3.h.heightBox,
                ],
              ),
            ),
          ),
          Visibility(
            visible: isvisibility,
            child: Container(
              height: 8.h,
              width: 100.w,
              decoration: BoxDecoration(color: btn1),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("! Item | \$220").text.white.size(13.sp).make(),
                    InkWell(
                      onTap: () {
                        Get.to(OrderPage());
                      },
                      child: Row(
                        children: [
                          Text("VIEW CART").text.white.size(13.sp).make(),
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 18.sp,
                          )
                        ],
                      ),
                    )
                  ]).p12(),
            ),
          ),
          
        ],
      )),
    );
  }
}
