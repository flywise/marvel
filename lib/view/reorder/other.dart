import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  State<OtherPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("OTHER").text.black.make(),
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        1.h.heightBox,
        Text("Reason").text.black.size(15.sp).bold.make(),
        1.h.heightBox,
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle")
            .text
            .gray600
            .size(12.sp)
            .make(),
        3.h.heightBox,
        Row(
          children: [
            Container(
              height: 5.h,
              width: 30.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.sp),
                  border: Border.all(color: btn1)),
              child: Center(
                child: Text("CHAT US").text.color(btn1).size(12.sp).make(),
              ),
            ),
            Spacer(),
            Container(
              height: 5.h,
              width: 30.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.sp),
                  border: Border.all(color: btn1)),
              child: Center(
                child: Text("CHAT US").text.color(btn1).size(12.sp).make(),
              ),
            )
          ],
        )
      ]).p12(),
    );
  }
}
