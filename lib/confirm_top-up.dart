import 'package:flutter/material.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/themes/app_color.dart';

class ConfirmTopUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 35.0,
                ),
                Icon(Icons.arrow_back_ios),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Top Up Your Wallet',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Top Up Success!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cymmer John Maranga',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '₱20.00',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ref. No: 1001 423 78562',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'June 12, 2020 | 8:42 PM',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200.0,
            ),
            ButtonFill(
              label: "Confirm",
              onTap: () {
                Navigator.pushReplacementNamed(context, '/dashboard_inquiree');
              },
            )
          ],
        ),
      ),
    );
  }
}
