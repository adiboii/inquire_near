import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Sign in to your account",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 32,
                        ),
                  ),
                  SizedBox(height: 30),
                  inTextField(label: "Email Address"),
                  SizedBox(height: 15),
                  inTextField(
                    label: "Password",
                    isObscure: true,
                  ),
                ],
              ),
              SizedBox(height: 50),
              ButtonFill(label: "Sign In"),
              SizedBox(height: 60),
              Column(
                children: [
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Sign In With",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          width: 50,
                          image: AssetImage("assets/images/Google.png")),
                      SizedBox(width: 40),
                      Image(
                          width: 45,
                          image: AssetImage("assets/images/Facebook.png")),
                      SizedBox(width: 40),
                      Image(
                          width: 45,
                          image: AssetImage("assets/images/Apple.png")),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
