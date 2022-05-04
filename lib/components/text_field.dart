import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';

class inTextField extends StatelessWidget {
  String label;
  bool isObscure;
  inTextField({required this.label, this.isObscure = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: AppColor.secondary,
              )),
          child: TextField(
            obscureText: isObscure,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
