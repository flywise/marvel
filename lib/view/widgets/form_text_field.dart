import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  String? hintTextForm;
  Icon? preIcon, sufIcon;
  bool? pass;
  FormTextField(
      {Key? key, this.hintTextForm, this.preIcon, this.sufIcon, this.pass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1,
          spreadRadius: 1,
          offset: Offset(3, 3),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: TextFormField(
          obscureText: pass!,
          decoration: InputDecoration(
            hintText: "$hintTextForm",
            prefixIcon: preIcon,
            suffixIcon: sufIcon,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
