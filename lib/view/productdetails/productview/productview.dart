import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/order/order_page.dart';
import 'package:marvel_user/view/productdetails/productview/product_view_model.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int currtpageshow = 0;

  PageController? _controllershow;

  int currtpage = 0;

  PageController? _controller;
  int offers = 1;

  var numOfItems = 01;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    _controllershow = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    _controllershow!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        height: 35.h,
                        child: PageView.builder(
                          controller: _controller,
                          itemCount: productviewmodel.length,
                          onPageChanged: (int index) {
                            setState(() {
                              currtpage = index;
                            });
                          },
                          itemBuilder: (_, i) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: 100.w,
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            showDialogFunc(
                                              context,
                                            );
                                          },
                                          child: Container(
                                            height: 35.h,
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                      productviewmodel[i].image,
                                                    ))),
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            );
                          },
                        ),
                      ),
                      Positioned(
                        top: 10,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 20.sp,
                            )).pSymmetric(h: 5.w),
                      ),
                      Positioned(
                        top: 32.h,
                        left: 45.w,
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(productviewmodel.length,
                                  (index) => buildDot(index, context))),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    borderRadius: BorderRadius.circular(10.sp)),
                              ),
                            ),
                          ).p12(),
                          3.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              2.h.heightBox,
                              Text("Strawberry Frozen").text.size(14.sp).make(),
                              0.5.h.heightBox,
                              Text(""),
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      decreaseItem();
                                    },
                                    child: Text("-")
                                        .text
                                        .color(Colors.grey)
                                        .size(18.sp)
                                        .bold
                                        .make(),
                                  ),
                                  Text(numOfItems.toString())
                                      .text
                                      .color(Colors.green)
                                      .size(12.sp)
                                      .bold
                                      .make(),
                                  InkWell(
                                    onTap: () {
                                      increaseItem();
                                    },
                                    child: Text("+")
                                        .text
                                        .color(Colors.green)
                                        .size(13.sp)
                                        .bold
                                        .make(),
                                  ),
                                ],
                              ).px(8.sp))
                          .p12(),
                    ],
                  ),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever .")
                      .p12(),
                  Text("Add Ons (1)").text.bold.size(13.sp).make().p12(),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: Colors.green,
                                value: 1,
                                groupValue: offers,
                                onChanged: (value) {
                                  setState(() {
                                    offers = value as int;
                                  });
                                },
                              ),
                              Text('Fresh Cream 1.00')
                                  .text
                                  .size(12.sp)
                                  .bold
                                  .make(),
                              Spacer(),
                              Container(
                                  height: 3.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.grey,
                                  )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("-")
                                          .text
                                          .color(Colors.grey)
                                          .size(18.sp)
                                          .bold
                                          .make(),
                                      Text("1")
                                          .text
                                          .color(Colors.green)
                                          .size(12.sp)
                                          .bold
                                          .make(),
                                      Text("+")
                                          .text
                                          .color(Colors.green)
                                          .size(13.sp)
                                          .bold
                                          .make(),
                                    ],
                                  ).px(8.sp)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: Colors.green,
                                value: 2,
                                groupValue: offers,
                                onChanged: (value) {
                                  setState(() {
                                    offers = value as int;
                                  });
                                },
                              ),
                              Text('Coco 0.50').text.size(12.sp).bold.make(),
                              Spacer(),
                              Container(
                                  height: 3.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.grey,
                                  )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("-")
                                          .text
                                          .color(Colors.grey)
                                          .size(18.sp)
                                          .bold
                                          .make(),
                                      Text("1")
                                          .text
                                          .color(Colors.green)
                                          .size(12.sp)
                                          .bold
                                          .make(),
                                      Text("+")
                                          .text
                                          .color(Colors.green)
                                          .size(13.sp)
                                          .bold
                                          .make(),
                                    ],
                                  ).px(8.sp)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: Colors.green,
                                value: 3,
                                groupValue: offers,
                                onChanged: (value) {
                                  setState(() {
                                    offers = value as int;
                                  });
                                },
                              ),
                              Text('Strawberry 0.50')
                                  .text
                                  .size(12.sp)
                                  .bold
                                  .make(),
                              Spacer(),
                              Container(
                                  height: 3.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.grey,
                                  )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("-")
                                          .text
                                          .color(Colors.grey)
                                          .size(18.sp)
                                          .bold
                                          .make(),
                                      Text("1")
                                          .text
                                          .color(Colors.green)
                                          .size(12.sp)
                                          .bold
                                          .make(),
                                      Text("+")
                                          .text
                                          .color(Colors.green)
                                          .size(13.sp)
                                          .bold
                                          .make(),
                                    ],
                                  ).px(8.sp)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: Colors.green,
                                value: 4,
                                groupValue: offers,
                                onChanged: (value) {
                                  setState(() {
                                    offers = value as int;
                                  });
                                },
                              ),
                              Text('Pea Nuts 0.5').text.size(12.sp).bold.make(),
                              Spacer(),
                              Container(
                                  height: 3.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Colors.grey,
                                  )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("-")
                                          .text
                                          .color(Colors.grey)
                                          .size(18.sp)
                                          .bold
                                          .make(),
                                      Text("1")
                                          .text
                                          .color(Colors.green)
                                          .size(12.sp)
                                          .bold
                                          .make(),
                                      Text("+")
                                          .text
                                          .color(Colors.green)
                                          .size(13.sp)
                                          .bold
                                          .make(),
                                    ],
                                  ).px(8.sp)),
                            ],
                          ),
                        ),
                      ]),
                  Text("Custom Notes").text.size(13.sp).bold.make().p12(),
                  Container(
                    height: 20.h,
                    width: 100.w,
                    color: background,
                    child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText: "Write Something",
                          border: InputBorder.none),
                      style: TextStyle(),
                    ).p12(),
                  ).p12(),
                  2.h.heightBox,
                  Center(
                    child: Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.sp)),
                      child: Center(
                          child: Text("SUBMIT")
                              .text
                              .black
                              .bold
                              .size(13.sp)
                              .make()
                              .p12()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
        ],
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
        color: currtpage == index ? Colors.white : Color(0xff979797),
      ),
    );
  }

  Container buildDotshow(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currtpageshow == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currtpageshow == index ? Colors.white : Color(0xff979797),
      ),
    );
  }

  showDialogFunc(
    context,
  ) {
    return showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context, setState) {
              return Center(
                child: Material(
                  type: MaterialType.transparency,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    padding: EdgeInsets.all(15),
                    width: 100.w,
                    height: 100.h,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Image.asset(
                                "lib/assets/images/close.png",
                                height: 3.5.h,
                                width: 10.w,
                                color: Colors.white,
                              ),
                            )),
                        10.h.heightBox,
                        SizedBox(
                          height: 50.h,
                          child: PageView.builder(
                            controller: _controllershow,
                            itemCount: productviewmodel.length,
                            onPageChanged: (int index) {
                              setState(() {
                                currtpageshow = index;
                              });
                            },
                            itemBuilder: (_, i) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 100.w,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50.h,
                                            width: 80.w,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                      productviewmodel[i].image,
                                                    ))),
                                          ),
                                        ],
                                      )),
                                ],
                              );
                            },
                          ),
                        ),
                        20.h.heightBox,
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(productviewmodel.length,
                                (index) => buildDotshow(index, context))),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

  void increaseItem() {
    setState(() {
      numOfItems++;
    });
  }

  void decreaseItem() {
    if (numOfItems != 1) {
      setState(() {
        numOfItems--;
      });
    }
  }
}
