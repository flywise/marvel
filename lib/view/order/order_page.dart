import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_user/constant.dart';
import 'package:marvel_user/view/accountInfo/payment/payment_page.dart';
import 'package:marvel_user/view/add%20address/add_address.dart';
import 'package:marvel_user/view/order/order_controller.dart';
import 'package:marvel_user/view/order/visibilityaddress_controller.dart';
import 'package:marvel_user/view/widgets/button_main.dart';

import 'package:sizer/sizer.dart';

import 'package:velocity_x/velocity_x.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  OrderController orderController = Get.put(OrderController());
  // bool isvisible = true;
  bool isButtonvisible = true;
  var numberitemcounter = 1;
  // bool addcustomnotes = true;
  // bool addcustomnoteswrite = false;

  late TextEditingController mycontroller;
  String name = " Add custom notes";

  @override
  void initState() {
    mycontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  // VisibilityController visibilityController = Get.put(VisibilityController());

  @override
  Widget build(BuildContext context) {
    int selected = 1;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Subway",
              style: TextStyle(color: Colors.black, fontSize: 15.sp),
            ),
            Text(
              "washington B.C",
              style: TextStyle(
                  color: Color.fromARGB(255, 43, 41, 41), fontSize: 12.sp),
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 62.h,
                    width: 100.w,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        2.h.heightBox,
                        Row(
                          children: [
                            SizedBox(
                                height: 10.h,
                                width: 20.w,
                                child: Image.asset(
                                  "lib/assets/images/cup_cake.jpg",
                                  fit: BoxFit.fill,
                                )).p12(),
                            5.w.widthBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Cakiess").text.size(14.sp).bold.make(),
                                1.h.heightBox,
                                Text("American, Fast Food")
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 2.h,
                                  width: 4.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: Color(0xff591815),
                                  )),
                                  child: Center(
                                    child: Container(
                                      height: 1.h,
                                      width: 2.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xff591815),
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                    ),
                                  ),
                                ).p12(),
                                3.w.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    2.h.heightBox,
                                    Text("Strawberry Frozen")
                                        .text
                                        .size(13.sp)
                                        .make(),
                                    0.5.h.heightBox,
                                    Text("\$220"),
                                  ],
                                )
                              ],
                            ),
                            Container(
                                    height: 3.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Colors.grey,
                                    )),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            decreaseItemcounter();
                                          },
                                          child: Text("-")
                                              .text
                                              .color(Colors.grey)
                                              .size(18.sp)
                                              .bold
                                              .make(),
                                        ),
                                        Text("$numberitemcounter")
                                            .text
                                            .color(Colors.green)
                                            .size(12.sp)
                                            .bold
                                            .make(),
                                        InkWell(
                                          onTap: () {
                                            increaseItemcounter();
                                          },
                                          child: Text("+")
                                              .text
                                              .color(Colors.green)
                                              .size(13.sp)
                                              .bold
                                              .make(),
                                        ),
                                      ],
                                    ).px(8.sp))
                                .p12(),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 3.h,
                        ),
                        // Visibility(
                        //   visible: addcustomnoteswrite,
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text("Write the cake and add the name."),
                        //       InkWell(
                        //         onTap: () {},
                        //         child: SizedBox(
                        //             height: 4.h,
                        //             child: Image.asset(
                        //                 "lib/assets/images/notebook.png")),
                        //       )
                        //     ],
                        //   ).p12(),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(name).text.color(btn1).make(),
                            2.w.widthBox,
                            InkWell(
                              onTap: () async {
                                final name = await openDialog();
                                if (name == null || name.isEmpty) return;
                                setState(() {
                                  // addcustomnotes = !addcustomnotes;
                                  // addcustomnoteswrite = !addcustomnoteswrite;
                                  this.name = name;
                                  print(mycontroller.text);
                                });
                              },
                              child: SizedBox(
                                  height: 4.h,
                                  child: Image.asset(
                                      "lib/assets/images/notebook.png")),
                            )
                          ],
                        ).p12(),
                        Divider(
                          color: Colors.grey,
                          height: 4.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Item Total").text.size(13.sp).make(),
                            Text("\$220").text.size(13.sp).make(),
                          ],
                        ).px(12),
                        1.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery Fees").text.size(13.sp).make(),
                            Text("\$20").text.size(13.sp).make(),
                          ],
                        ).px(12),
                        1.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Discount").text.size(13.sp).make(),
                            Text("-\$30").text.size(13.sp).make(),
                          ],
                        ).px(12),
                        Divider(
                          color: Colors.grey,
                          height: 4.h,
                        ).px(12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Obx(() => Radio(
                                      value: orderController.withotWallet[0],
                                      groupValue:
                                          orderController.byWallet.value,
                                      onChanged: (value) {
                                        orderController.byWallet.value =
                                            value as bool;
                                      },
                                      activeColor: Colors.green,
                                    )),
                                Text("USE WALLET"),
                                2.w.widthBox,
                                Text("(\$230)").text.bold.color(btn1).make(),
                              ],
                            ),
                            Text("To Pay  \$250")
                                .text
                                .size(12.sp)
                                .bold
                                .make()
                                .px(12),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 5.h,
                        ),
                      ],
                    ),
                  ),
                  3.h.heightBox,
                  // Visibility(
                  //   visible: isvisible,
                  //   child: Row(
                  //     children: [
                  //       Image.asset("lib/assets/images/location.png"),
                  //       3.w.widthBox,
                  //       Text("You seem to be in a new location!")
                  //           .text
                  //           .size(13.sp)
                  //           .make()
                  //     ],
                  //   ).p12(),
                  // ),
                ],
              ),
              Visibility(
                  visible: isButtonvisible,
                  child: Row(
                    children: [
                      Container(
                        height: 5.h,
                        width: 10.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: SizedBox(
                              height: 3.h,
                              width: 6.w,
                              child: Image.asset(
                                  "lib/assets/images/location.png")),
                        ),
                      ),
                      4.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          1.h.heightBox,
                          Text("Deliver to Home").text.bold.size(12.sp).make(),
                          0.5.h.heightBox,
                          Text("Washing B.C"),
                          0.5.h.heightBox,
                          Text("50 MINS")
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Get.to(Addaddress());
                        },
                        child: Text("Add address")
                            .text
                            .uppercase
                            .color(btn1)
                            .size(12.sp)
                            .make(),
                      ),
                    ],
                  ).p12()),
              // Visibility(
              //   visible: !isButtonvisible,
              //   child: ButtonMain(
              //     onpress: () {
              //       setState(() {
              //         isvisible = !isvisible;
              //         isButtonvisible = !isButtonvisible;
              //       });
              //     },
              //     btncolor: btn1,
              //     btnname: "add address to proceed",
              //     btncolortext: btn2,
              //   ).p12(),
              // ),
              ButtonMain(
                onpress: () {
                  Get.to(PaymentPage());
                  setState(() {
                    isButtonvisible = !isButtonvisible;
                  });
                },
                btncolor: btn1,
                btnname: "continue",
                btncolortext: btn2,
              ).p12()
            ]),
      ),
    );
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
              child: Text(
            "Add custom notes",
            style: TextStyle(color: btn1),
          )),
          content: Container(
            height: 10.h,
            width: 20.w,
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                margin: EdgeInsets.fromLTRB(10.sp, 0, 0, 20.sp),
                child: TextField(
                  controller: mycontroller,
                  autofocus: true,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                      hintText: "Wrap the cake and add the name",
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 8.sp)),
                ),
              ),
            ),
          ),
          actions: [
            ButtonMain(
              onpress: () {
                Navigator.of(context).pop(mycontroller.text);
              },
              btncolor: btn1,
              btncolortext: btn2,
              btnname: "submit",
            )
          ],
        );
      });

  void increaseItemcounter() {
    setState(() {
      numberitemcounter++;
    });
  }

  void decreaseItemcounter() {
    if (numberitemcounter != 1) {
      setState(() {
        numberitemcounter--;
      });
    }
  }
}
