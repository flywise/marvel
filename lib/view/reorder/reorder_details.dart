import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          2.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Spicy Prawn Tikka * 1").text.size(13.sp).bold.make(),
              Text("\$150").text.size(13.sp).bold.make(),
            ],
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Spicy Prawn Tikka * 1").text.size(11.sp).bold.make(),
              Text("\$150").text.size(11.sp).bold.make(),
            ],
          ),
          2.h.heightBox,
          DottedLine(),
          2.h.heightBox,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("item Total").text.size(13.sp).bold.make(),
                  Text("\$250").text.size(13.sp).bold.make(),
                ],
              ),
              1.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Service Tax").text.size(11.sp).green900.bold.make(),
                  Text("\$30").text.size(11.sp).bold.make(),
                ],
              ),
              1.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Charges").text.size(11.sp).bold.make(),
                  Text("\$30").text.size(11.sp).bold.make(),
                ],
              ),
              1.h.heightBox,
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              2.h.heightBox,
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Total   \$250").text.size(11.sp).bold.make(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
