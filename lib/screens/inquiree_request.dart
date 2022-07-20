import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';

class AcceptOrRejectInquireePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You are Hired!',
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
                    '☆☆☆☆☆',
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
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    'Inquiry Details:',
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    'Inquiry (3):                                       ₱90.00',
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    'Require Proof (1):                           ₱150.00',
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    'Attached Photo:                               ₱10.00',
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
              SizedBox(
                width: 235.0,
                height: 10.0,
                child: Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    '                                                       ₱250.00',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: 250.0,
                        child: Card(
                          color: AppColor.primary,
                          child: Center(
                            child: Text(
                              'Accept Request',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                        width: 250.0,
                        child: Card(
                          color: AppColor.red,
                          child: Center(
                            child: Text(
                              'Reject Request',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
