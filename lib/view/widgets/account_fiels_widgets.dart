import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AccountFieldWidgets extends StatelessWidget {
  String? acfieldtext;
  String? acimage;
  Icon? acicon;
  VoidCallback? onpress;
  VoidCallback? oncall;

  AccountFieldWidgets(
      {Key? key,
      this.acfieldtext,
      this.acimage,
      this.acicon,
      this.onpress,
      this.oncall})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onpress,
          child: Row(
            children: [
              Container(
                height: 2.2.h,
                width: 5.w,
                child: Image.asset(
                  "$acimage",
                  color: Colors.black,
                  height: 40,
                ),
              ),
              4.w.widthBox,
              Text(
                '$acfieldtext ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        IconButton(onPressed: oncall, icon: acicon!)
      ],
    );
  }
}
