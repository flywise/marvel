import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/accountInfo/editaccount/edit_account.dart';
import 'package:marvel_user/view/accountInfo/favorites/favorites.dart';
import 'package:marvel_user/view/accountInfo/manage/manage_address_page.dart';
import 'package:marvel_user/view/accountInfo/myorder/myorder_page.dart';
import 'package:marvel_user/view/accountInfo/notification/notification_page.dart';
import 'package:marvel_user/view/accountInfo/payment/payment_page.dart';
import 'package:marvel_user/view/login/login.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/account_fiels_widgets.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("BRITO").text.size(13.sp).bold.make(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text("9988776655"),
                    3.w.widthBox,
                    Container(
                      height: 0.5.h,
                      width: 1.w,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                    3.w.widthBox,
                    Text("brit@gmail.com"),
                  ]),
                  InkWell(
                      onTap: () {
                        Get.to(EditAccount());
                      },
                      child: Text("EDIT").text.color(btn1).make())
                ],
              ),
              1.h.heightBox,
              Container(
                height: 0.1.h,
                decoration: BoxDecoration(color: Colors.black),
              ),
              2.h.heightBox,
              Text("My Account").text.size(13.sp).make(),
              3.h.heightBox,
              AccountFieldWidgets(
                onpress: () {
                  Get.to(() => ManageAddress());
                },
                acfieldtext: "Manage",
                acimage: "lib/assets/images/homeicon.png",
                acicon: Icon(
                  Icons.arrow_forward_ios,
                  size: 12.sp,
                ),
                oncall: () {
                  Get.to(ManageAddress());
                },
              ),
              AccountFieldWidgets(
                onpress: () {
                  Get.to(Favorites());
                },
                acfieldtext: "Favorites",
                acimage: "lib/assets/images/hearticon.png",
                acicon: Icon(
                  Icons.arrow_forward_ios,
                  size: 12.sp,
                ),
                oncall: () {
                  Get.to(Favorites());
                },
              ),
              AccountFieldWidgets(
                onpress: () {
                  Get.to(PaymentPage());
                },
                acfieldtext: "Payment",
                acimage: "lib/assets/images/paymenticon.png",
                acicon: Icon(
                  Icons.arrow_forward_ios,
                  size: 12.sp,
                ),
                oncall: () {
                  Get.to(PaymentPage());
                },
              ),
              AccountFieldWidgets(
                onpress: () {
                  Get.to(MyOrder());
                },
                acfieldtext: "My Orders",
                acimage: "lib/assets/images/ordericon.png",
                acicon: Icon(
                  Icons.arrow_forward_ios,
                  size: 12.sp,
                ),
                oncall: () {
                  Get.to(MyOrder());
                },
              ),
              AccountFieldWidgets(
                onpress: () {
                  Get.to(NotificationPage());
                },
                acfieldtext: "Notifications",
                acimage: "lib/assets/images/notificationicon.png",
                acicon: Icon(
                  Icons.arrow_forward_ios,
                  size: 12.sp,
                ),
                oncall: () {
                  Get.to(NotificationPage());
                },
              ),
              10.h.heightBox,
              Divider(
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  Get.to(Login());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Logout").text.uppercase.size(13.sp).make(),
                    SizedBox(
                        height: 5.h,
                        width: 5.w,
                        child: Image.asset("lib/assets/images/logout 1.png"))
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              5.h.heightBox,
              Center(child: Text("Version 1.0"))
            ],
          ),
        ),
      ),
    );
  }
}
