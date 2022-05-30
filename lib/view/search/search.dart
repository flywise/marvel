import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/search/dishes.dart';
import 'package:marvel_user/view/search/restaurant.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            // title: Text("Subway").text.black.make(),
            flexibleSpace: Container(
              margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
              child: Text(
                'Subway',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: (FontWeight.bold),
                  color: Colors.black,
                ),
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10.sp),
                  child: SizedBox(
                      height: 2.h,
                      width: 5.w,
                      child: Image.asset("lib/assets/images/close.png")),
                ),
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                3.h.heightBox,
                Container(
                  height: 20,
                  width: 50.w,
                  child: TabBar(
                    padding: EdgeInsets.zero,
                    unselectedLabelColor: Colors.grey.shade500,
                    indicatorColor: btn1,
                    labelColor: Colors.black,
                    labelPadding: EdgeInsets.only(top: 0, bottom: 1),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(
                        text: 'RESTAURANT',
                      ),
                      Tab(
                        text: 'DISHES',
                      ),
                    ],
                  ),
                ),
                2.h.heightBox,
                Container(
                  height: 5.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Container(
                      padding: EdgeInsets.all(10.sp),
                      child: Text("Related to Subway")),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    Center(
                      child: RestaurantPage(),
                    ),
                    Center(
                      child: Dishes(),
                    ),
                  ],
                )),
              ],
            ),
          )),
    );
  }
}
