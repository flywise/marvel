import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/reorder/reorder_details.dart';
import 'package:marvel_user/view/reorder/reorder_details_help.dart';
import 'package:marvel_user/view/search/dishes.dart';
import 'package:marvel_user/view/search/restaurant.dart';
import 'package:marvel_user/view/widgets/bottom_nav.dart';
import 'package:marvel_user/view/widgets/button_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ReorderPage extends StatefulWidget {
  const ReorderPage({Key? key}) : super(key: key);

  @override
  State<ReorderPage> createState() => _ReorderPageState();
}

class _ReorderPageState extends State<ReorderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ORDER#1001",
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
              Text(
                "Delivered | 1 item, \$250",
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 41, 41), fontSize: 11.sp),
              )
            ],
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 13, top: 50),
                        width: 2,
                        height: 100,
                        color: Colors.grey,
                        child: Container(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          statusWidget(
                            'location',
                            "Subway",
                            "Tarc colony, Megberg winson road....",
                            true,
                          ),
                          statusWidget('homeicon', "HOME",
                              "Washing B>C , Green Town....", false),
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(
                        Icons.done,
                        color: btn1,
                        size: 18.sp,
                      ),
                      3.w.widthBox,
                      Text("Order Delivered Succesfully on 12-3-17, 12.00am")
                          .text
                          .color(btn1)
                          .make()
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    height: 1,
                    color: Colors.grey,
                  ),
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
                        Tab(text: 'DETAILS'),
                        Tab(
                          text: 'HELP',
                        ),
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  SizedBox(
                      height: 100.h,
                      child: TabBarView(
                        children: [
                          Center(
                            child: OrderDetails(),
                          ),
                          Center(
                            child: ReordersDetailsHelp(),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Container statusWidget(
    String img,
    String status,
    String Substatus,
    bool isActive,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          8.h.heightBox,
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/$img.png"),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
                style: TextStyle(
                    color: (isActive) ? (btn1) : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp),
              ),
              Text(
                Substatus,
                style: TextStyle(
                  color: (isActive) ? btn1 : Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
