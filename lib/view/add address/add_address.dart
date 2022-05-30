import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/order/order_page.dart';
import 'package:marvel_user/view/widgets/button_main.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Addaddress extends StatefulWidget {
  Addaddress({Key? key}) : super(key: key);

  @override
  State<Addaddress> createState() => _AddaddressState();
}

class _AddaddressState extends State<Addaddress> {
  bool isSelected = true;
  bool isSaveAs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
              width: 100.w,
              child: Image.asset(
                "lib/assets/images/map.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Text("Save Delivery location").text.bold.size(13.sp).make().p16(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "ADDRESS",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 5, 5, 5),
                    ),
                    // hintText: 'Washing B.C , Green Town',
                  ),
                ),
                2.h.heightBox,

                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: "HOUSE/ FLAT NO.",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 5, 5, 5),
                    ),
                    // hintText: 'Light house, 22f',
                  ),
                ),
                2.h.heightBox,
                // Text("LANDMARK"),
                TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),

                    labelText: "LANDMARK",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 5, 5, 5),
                    ),
                    // hintText: 'Gream Studio (Opp)',
                  ),
                ),
                Visibility(
                  visible: isSaveAs,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),

                      labelText: "SAVE AS",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 5, 5, 5),
                      ),
                      // hintText: 'Gream Studio (Opp)',
                    ),
                  ),
                ),
              ],
            ).p16(),
            Visibility(visible: isSelected, child: Text("SAVE AS").p16()),
            Visibility(
              visible: isSelected,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                          height: 3.h,
                          child: Image.asset(
                            "lib/assets/images/homeicon.png",
                            color: btn1,
                          )),
                      Text("HOME").text.color(btn1).make(),
                    ],
                  ),
                  8.w.widthBox,
                  Column(
                    children: [
                      SizedBox(
                          height: 3.h,
                          child: Image.asset(
                            "lib/assets/images/shopping-bag.png",
                            color: Colors.grey,
                          )),
                      Text("WORK").text.color(Colors.grey).make(),
                    ],
                  ),
                  8.w.widthBox,
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                        isSaveAs = !isSaveAs;
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 3.h,
                            child: Image.asset(
                              "lib/assets/images/location.png",
                              color: Colors.grey,
                            )),
                        InkWell(
                            onTap: () {},
                            child:
                                Text("OTHER").text.color(Colors.grey).make()),
                      ],
                    ),
                  ),
                ],
              ).p16(),
            ),
            Visibility(
              visible: isSelected,
              child: ButtonMain(
                onpress: () {
                  Get.to(OrderPage());
                },
                btncolor: btn1,
                btnname: "done",
                btncolortext: btn2,
              ).p16(),
            ),
            Visibility(
              visible: isSaveAs,
              child: ButtonMain(
                onpress: () {
                  Get.to(OrderPage());
                },
                btncolor: btn1,
                btnname: "Save and proceed",
                btncolortext: btn2,
              ).p16(),
            ),
          ],
        ),
      ),
    );
  }
}
