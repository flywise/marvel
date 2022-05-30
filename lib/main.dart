import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:marvel_user/view/accountInfo/account_info.dart';
import 'package:marvel_user/view/accountInfo/editaccount/edit_account.dart';
import 'package:marvel_user/view/accountInfo/favorites/favorites.dart';
import 'package:marvel_user/view/accountInfo/manage/empty_manage_address.dart';
import 'package:marvel_user/view/accountInfo/manage/manage_address_page.dart';
import 'package:marvel_user/view/accountInfo/myorder/myorder_page.dart';
import 'package:marvel_user/view/accountInfo/notification/notification_page.dart';
import 'package:marvel_user/view/accountInfo/payment/add_payment.dart';
import 'package:marvel_user/view/accountInfo/payment/payment_page.dart';
import 'package:marvel_user/view/accountInfo/payment/payments.dart';
import 'package:marvel_user/view/add%20address/add_address.dart';
import 'package:marvel_user/view/filter/filter.dart';
import 'package:marvel_user/view/home/home_page.dart';
import 'package:marvel_user/view/location/track_location.dart';
import 'package:marvel_user/view/login/create_new_password.dart';
import 'package:marvel_user/view/login/login.dart';
import 'package:marvel_user/view/login/mobile_no.dart';
import 'package:marvel_user/view/login/mobile_no_verify.dart';
import 'package:marvel_user/view/login/onboarding/onboarding.dart';
import 'package:marvel_user/view/login/onboarding/splash_screen.dart';
import 'package:marvel_user/view/login/otp.dart';
import 'package:marvel_user/view/login/resend_otp.dart';
import 'package:marvel_user/view/login/signin.dart';
import 'package:marvel_user/view/order/order_page.dart';
import 'package:marvel_user/view/productdetails/productdetails.dart';
import 'package:marvel_user/view/search/restaurant.dart';
import 'package:marvel_user/view/search/search.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: SplashScreen(),
        );
      },
    );
  }
}
