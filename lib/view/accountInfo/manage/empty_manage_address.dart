import 'package:flutter/material.dart';
import 'package:marvel_user/constant.dart';

import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

class EmptyManageAddress extends StatelessWidget {
  const EmptyManageAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("MANAGE ADDRESS"),
          // .text.black.make(),
          leading: InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            10.h.heightBox,
            Column(
              children: [
                Center(child: Image.asset("lib/assets/images/gate.png")),
                Text("knock, knock ! who's there ?")
                    .text
                    .size(15.sp)
                    .uppercase
                    .make(),
                1.h.heightBox,
                Text("Saving address help you checkout faster.")
                    .text
                    .size(12.sp)
                    .color(Colors.grey)
                    .uppercase
                    .make(),
              ],
            ),
            Container(
              height: 5.h,
              width: 100.w,
              decoration: BoxDecoration(border: Border.all(color: btn1)),
              child: Center(
                child: Text("add new address")
                    .text
                    .size(12.sp)
                    .uppercase
                    .color(btn1)
                    .make(),
              ),
            ).p24()
          ],
        ));
  }
}
