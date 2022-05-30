import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: 35.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SET DELIVERY LOCATION",
                style: TextStyle(
                  color: btn1,
                  fontSize: 8.sp,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3.h),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    hintText: "Search for area , street name....",
                  ),
                ),
              )
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          2.h.heightBox,
          Row(
            children: [
              SizedBox(
                height: 3.h,
                width: 6.w,
                child: Image.asset(
                  "lib/assets/images/livelocation.png",
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
              ),
              4.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Current Location").text.size(6.sp).bold.make(),
                  0.5.h.heightBox,
                  Text("Enable Location Services").text.size(5.sp).make()
                ],
              )
            ],
          ).p16(),
          Divider(
            height: 4,
            color: Colors.grey,
          ),
          2.h.heightBox,
          Text("Saved address").text.size(10.sp).uppercase.make().px64(),
          Row(
            children: [
              SizedBox(
                height: 3.h,
                width: 6.w,
                child: Image.asset(
                  "lib/assets/images/homeicon.png",
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
              ),
              4.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Home").text.size(10.sp).bold.make(),
                  0.5.h.heightBox,
                  Text("Washing B.C, Green Tower West, United....")
                      .text
                      .size(5.sp)
                      .make(),
                ],
              ),
            ],
          ).p16(),
          Divider(
            height: 2,
            color: Colors.grey,
          ).p16(),
          Row(
            children: [
              SizedBox(
                height: 3.h,
                width: 6.w,
                child: Image.asset(
                  "lib/assets/images/shopping-bag.png",
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
              ),
              4.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Work").text.size(10.sp).bold.make(),
                  0.5.h.heightBox,
                  Text("Livinggstun D.C, Red Hillton West, United....")
                      .text
                      .size(5.sp)
                      .make(),
                ],
              ),
            ],
          ).p16(),
          Divider(
            height: 4,
            color: Colors.grey,
          ).p16(),
          Row(
            children: [
              SizedBox(
                height: 3.h,
                width: 6.w,
                child: Image.asset(
                  "lib/assets/images/location.png",
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
              ),
              4.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Other 1").text.size(6.sp).bold.make(),
                  0.5.h.heightBox,
                  Text("Tarc Colony, Megberg winson road United...")
                      .text
                      .size(5.sp)
                      .make(),
                ],
              ),
            ],
          ).p16(),
          Divider(
            height: 6,
            color: Colors.grey,
          ).p16(),
        ],
      ),
    );
  }
}
