import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/accountInfo/payment/add_payment.dart';
import 'package:marvel_user/view/accountInfo/payment/payment_controller/payment_controller.dart';
import 'package:marvel_user/view/accountInfo/payment/wallet.dart';
import 'package:marvel_user/view/location/track_location.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentController paymentController = Get.put(PaymentController());

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("PAYMENTS").text.black.make(),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Wallet").text.size(13.sp).color(Colors.grey).make(),
              InkWell(
                onTap: () {
                  Get.to(AddAmount());
                },
                child: Container(
                  height: 4.h,
                  width: 20.w,
                  decoration: BoxDecoration(color: btn1),
                  child: Center(
                      child: 'add'.text.uppercase.center.bold.white.make()),
                ),
              )
            ],
          ).p12(),
          InkWell(
            onTap: () {
              Get.to(Wallet());
            },
            child: Container(
              height: 8.h,
              width: 100.w,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Wallet Amount").text.size(14.sp).make(),
                    Text("\$150").text.bold.size(14.sp).color(btn1).make()
                  ]).p12(),
            ),
          ),
          1.h.heightBox,
          Text("CARD").text.size(13.sp).color(Colors.grey).make().p12(),
          Container(
            height: 15.h,
            width: 100.w,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 5.h,
                              width: 10.w,
                              child: Image.asset("lib/assets/images/visa.png")),
                          5.w.widthBox,
                          Text("54321-XXXXXX-0986").text.size(14.sp).make(),
                        ],
                      ),
                      Visibility(
                        visible: true,
                        child: SizedBox(
                            height: 2.h,
                            width: 4.w,
                            child:
                                Image.asset("lib/assets/images/checked.png")),
                      ),
                    ]).p12(),
                Divider(
                  color: Colors.grey,
                ),
                1.h.heightBox,
                InkWell(
                  onTap: () {
                    Get.to(TrackLocation());
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 3.h,
                        width: 8.w,
                        decoration:
                            BoxDecoration(border: Border.all(color: btn1)),
                        child: Center(
                            child:
                                Text("+").text.size(14.sp).color(btn1).make()),
                      ).px(12),
                      5.w.widthBox,
                      Text("add new card")
                          .text
                          .size(14.sp)
                          .color(btn1)
                          .uppercase
                          .make(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          1.h.heightBox,
          Text("Pay on delivery")
              .text
              .size(13.sp)
              .color(Colors.grey)
              .uppercase
              .make()
              .p12(),
          Container(
            height: 8.h,
            width: 100.w,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 5.h,
                          width: 10.w,
                          child: Image.asset("lib/assets/images/money.png")),
                      5.w.widthBox,
                      Text("By Cash").text.size(14.sp).make(),
                    ],
                  ),
                  Obx(() => Radio(
                        value: paymentController.paymentcash[0],
                        groupValue: paymentController.byCash.value,
                        onChanged: (value) {
                          paymentController.byCash.value = value as bool;
                        },
                        activeColor: Colors.green,
                      )),
                ]).p12(),
          ),
        ],
      ),
    );
  }
}
