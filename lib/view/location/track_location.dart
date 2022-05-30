import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/widgets/bottom_nav.dart';
import 'package:marvel_user/view/widgets/button_main.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class TrackLocation extends StatefulWidget {
  const TrackLocation({Key? key}) : super(key: key);

  @override
  State<TrackLocation> createState() => _TrackLocationState();
}

class _TrackLocationState extends State<TrackLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Track Order",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 3.h),
                  child: Text(
                    "1 item, To pay: \$250",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 8.sp,
                    ),
                  ))
            ],
          ),
        ),
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
        child: Column(children: [
          SizedBox(
            height: 30.h,
            width: 100.w,
            child: Image.asset(
              "lib/assets/images/map.jpg",
              fit: BoxFit.cover,
            ),
          ),
          1.h.heightBox,
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 13, top: 50),
                      width: 2,
                      height: 400,
                      color: Colors.grey,
                      child: Container(),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            statusWidget(
                              'order_placed',
                              "Order Placed",
                              "We have recieved your order.",
                              true,
                            ),
                            statusWidget('order_confirmed', "Order Confirmed",
                                "Your order has been scheduled.", false),
                            statusWidget('order_processsed', "Order Processed",
                                "We are preparing your order.", false),
                            statusWidget('order_pickup', "Order Pickedup",
                                "Your order is ready to pickup.", false),
                            statusWidget('order_delivered', "Order Delivered",
                                "Your order is delivered successfully.", false),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    contentPadding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3)),
                                    content: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "FEEDBACK",
                                              style: TextStyle(
                                                  // color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "How was the delivery ?",
                                              style: TextStyle(
                                                  // color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        // height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            100,
                                                          ),
                                                        ),
                                                        // color: Colors.orange,
                                                        child: Image.asset(
                                                          "lib/assets/images/terrible.png",
                                                          color: Colors.orange,
                                                          height: 40,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text("Terrible"),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                      "lib/assets/images/bad.png",
                                                      height: 40,
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Bad"),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                      "lib/assets/images/okay.png",
                                                      height: 40,
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Okay"),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                      "lib/assets/images/good.png",
                                                      height: 40,
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Good"),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                      "lib/assets/images/superb.png",
                                                      height: 40,
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Superb"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Give some feedback in words.",
                                              style: TextStyle(
                                                  // color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black12),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: new InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      hintText:
                                                          "Give Your feedback...."),
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                  minLines:
                                                      1, //Normal textInputField will be displayed
                                                  maxLines:
                                                      5, // when user presses enter it will adapt to it
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           DashboardPage()),
                                              // );
                                            },
                                            child: Container(
                                              height: 7.h,
                                              width: 80.w,
                                              decoration: BoxDecoration(
                                                color: btn1,
                                                border: Border.all(
                                                    color: Colors.black12),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15),
                                                child: Text(
                                                  "SUBMIT",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            height: 2.5.h,
                            width: 11.w,
                            decoration: BoxDecoration(color: btn1),
                            child: Center(
                              child: Text("Done").text.white.size(10.sp).make(),
                            ),
                          ).py4(),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 1,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DETAILS").text.size(13.sp).bold.make(),
                    Text("HELP").text.size(13.sp).bold.make(),
                    Text("OTP").text.size(13.sp).bold.make(),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Spicy Prawn Tikka * 1")
                            .text
                            .size(13.sp)
                            .bold
                            .make(),
                        Text("\$150").text.size(13.sp).bold.make(),
                      ],
                    ),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Spicy Prawn Tikka * 1")
                            .text
                            .size(11.sp)
                            .bold
                            .make(),
                        Text("\$150").text.size(11.sp).bold.make(),
                      ],
                    ),
                  ],
                ),
                2.h.heightBox,
                DottedLine(),
                2.h.heightBox,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("item Total").text.size(13.sp).bold.make(),
                        Text("\$250").text.size(13.sp).bold.make(),
                      ],
                    ),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Service Tax")
                            .text
                            .size(11.sp)
                            .green900
                            .bold
                            .make(),
                        Text("\$30").text.size(11.sp).bold.make(),
                      ],
                    ),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Charges").text.size(11.sp).bold.make(),
                        Text("\$30").text.size(11.sp).bold.make(),
                      ],
                    ),
                    1.h.heightBox,
                    Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    2.h.heightBox,
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text("Total   \$250").text.size(11.sp).bold.make(),
                    )
                  ],
                ),
                2.h.heightBox,
                ButtonMain(
                  onpress: () {
                    Get.to(Bottom());
                  },
                  btncolor: btn1,
                  btncolortext: btn2,
                  btnname: "Continue",
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Container statusWidget(
    String img,
    String status,
    String Substatus,
    bool isActive,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          8.h.heightBox,
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/$img.png"),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
                style: TextStyle(
                    color: (isActive) ? (Colors.orange) : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp),
              ),
              Text(
                Substatus,
                style: TextStyle(
                  color: (isActive) ? Colors.orange : Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
