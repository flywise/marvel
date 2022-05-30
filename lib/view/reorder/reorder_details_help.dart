import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/view/reorder/other.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ReordersDetailsHelp extends StatefulWidget {
  const ReordersDetailsHelp({Key? key}) : super(key: key);

  @override
  State<ReordersDetailsHelp> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<ReordersDetailsHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Item Delayed form restaurant"),
            Icon(
              Icons.arrow_forward_ios,
              size: 12.sp,
            ),
          ],
        ),
        2.h.heightBox,
        Divider(
          height: 2,
          color: Colors.grey,
        ),
        2.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Item Delayed of packaging"),
            Icon(
              Icons.arrow_forward_ios,
              size: 12.sp,
            ),
          ],
        ),
        2.h.heightBox,
        Divider(
          height: 2,
          color: Colors.grey,
        ),
        2.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Items updating late"),
            Icon(
              Icons.arrow_forward_ios,
              size: 12.sp,
            ),
          ],
        ),
        2.h.heightBox,
        Divider(
          height: 2,
          color: Colors.grey,
        ),
        2.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Other"),
            InkWell(
              onTap: () {
                Get.to(OtherPage());
              },
              child: Icon(
                Icons.arrow_forward_ios,
                size: 12.sp,
              ),
            ),
          ],
        ),
        2.h.heightBox,
        Divider(
          height: 2,
          color: Colors.grey,
        ),
        2.h.heightBox,
      ]),
    );
  }
}
