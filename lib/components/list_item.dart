import 'package:flutter/material.dart';

import '../themes/app_color.dart';

class inListItem extends StatelessWidget {
  Color color;
  String type;
  String amount;

  inListItem({required this.color, required this.type, required this.amount});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColor.gray,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 5,
              ),
              SizedBox(width: 10),
              Text(type),
            ],
          ),
          Text(amount),
        ],
      ),
    );
  }
}
