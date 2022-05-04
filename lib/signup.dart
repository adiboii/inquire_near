import 'package:flutter/material.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';
import 'package:inquire_near/themes/app_color.dart';
import 'package:inquire_near/components/icon_container.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create a new account",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 24,
                        ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Use your socials",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconContainer(source: "assets/images/Google.png"),
                      SizedBox(width: 10),
                      IconContainer(source: "assets/images/Facebook.png"),
                      SizedBox(width: 10),
                      IconContainer(source: "assets/images/Apple.png"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(child: Text("or")),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 30),
                  inTextField(label: "Full Name"),
                  SizedBox(height: 15),
                  inTextField(label: "Email Address"),
                  SizedBox(height: 15),
                  inTextField(
                    label: "Password",
                    isObscure: true,
                  ),
                ],
              ),
              SizedBox(height: 50),
              ButtonFill(label: "Create Account"),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
