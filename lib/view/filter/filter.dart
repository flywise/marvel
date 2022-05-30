import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/widgets/bottom_nav.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int offers = 1;
  int cuisines = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("FILTERS").text.black.make(),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.sp),
            child: Center(
              child: Text(
                "RESET",
                style: TextStyle(color: btn1),
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          4.h.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: 27.h,
                    width: 100.w,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          1.h.heightBox,
                          Text("   show Restaurants with")
                              .text
                              .gray600
                              .size(12.sp)
                              .uppercase
                              .make(),
                          2.h.heightBox,
                          ListTile(
                            title: Text('Offers').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 1,
                              groupValue: offers,
                              onChanged: (value) {
                                setState(() {
                                  offers = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title:
                                Text('Pure Veg').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 2,
                              groupValue: offers,
                              onChanged: (value) {
                                setState(() {
                                  offers = value as int;
                                });
                              },
                            ),
                          ),
                        ]).p16(),
                  ),
                  3.h.heightBox,
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          1.h.heightBox,
                          Text("   cuisines")
                              .text
                              .gray600
                              .size(12.sp)
                              .uppercase
                              .make(),
                          2.h.heightBox,
                          ListTile(
                            title: Text('Italian').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 2,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('Danish').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 3,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('Indian').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 4,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('Spanish').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 5,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title:
                                Text('American').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 6,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('South').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 7,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('Italian').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 8,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('Russian').text.size(12.sp).bold.make(),
                            trailing: Radio(
                              activeColor: Colors.green,
                              value: 9,
                              groupValue: cuisines,
                              onChanged: (value) {
                                setState(() {
                                  cuisines = value as int;
                                });
                              },
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                        ]).p16(),
                  ),
                ],
              ),
            ),
          ),
          ButtonMain(
            onpress: () {
              Get.to(Bottom());
            },
            btncolor: btn1,
            btncolortext: btn2,
            btnname: "Apply filter",
          ).p16()
        ],
      ),
    );
  }
}
