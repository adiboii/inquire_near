import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';

class inCard extends StatelessWidget {
  double width;
  double height;

  inCard({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.90,
      height: height * 0.27,
      padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cymmer Maranga",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(color: Colors.white),
                  ),
                  Text(
                    "•••• •••• •••• 2457",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    "₱455.20",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(color: Colors.white, fontSize: 25),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
