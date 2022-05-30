import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OtpWidget extends StatelessWidget {
  bool? first;
  bool? last;
  OtpWidget({Key? key, this.first, this.last}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.orange, width: 2),
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(5.sp),
      ),
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15.sp, color: Colors.white),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: Offstage(),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
