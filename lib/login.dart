import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inquire_near/home_page.dart';
import 'package:inquire_near/themes/app_color.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool _success;
  late String? _userEmail;

  Future _firebaseLogin() async {
    final User? user = (await _auth.signInWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim()))
        .user;

    if (user != null) {
      setState(() {
        _success = true;
      });
      Navigator.pushReplacementNamed(context, '/dashboard_inquiree');
    } else {
      setState(() {
        _success = false;
      });
    }
  }

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
                  inTextField(
                    label: "Email Address",
                    icon: Icons.mail,
                    controller: _emailController,
                  ),
                  SizedBox(height: 15),
                  inTextField(
                    label: "Password",
                    icon: Icons.lock,
                    isObscure: true,
                    controller: _passwordController,
                  ),
                ],
              ),
              SizedBox(height: 50),
              ButtonFill(
                label: "Sign In",
                onTap: _firebaseLogin,
              ),
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
