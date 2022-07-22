import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inquire_near/themes/app_color.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primary,
      child: Center(
        child: SpinKitChasingDots(
          color: AppColor.secondary,
          size: 50,
        ),
      ),
    );
  }
}
