import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';
import 'package:inquire_near/components/icon_container.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  late bool _success;

  Future _register() async {
    final User? user = (await _auth.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim()))
        .user;

    if (user != null) {
      setState(() {
        _success = true;
      });
      Navigator.pushReplacementNamed(context, '/dashboard');
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create a new account",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 24,
                        ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Use your socials",
                    style: TextStyle(fontWeight: FontWeight.w600),
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
                  SizedBox(height: 10),
                  inTextField(
                    label: "Full Name",
                    icon: Icons.person,
                    controller: _nameController,
                  ),
                  SizedBox(height: 15),
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
                  SizedBox(height: 15),
                  inTextField(
                    label: "Confirm Password",
                    icon: Icons.lock,
                    isObscure: true,
                    controller: _passwordController,
                  ),
                ],
              ),
              SizedBox(height: 20),
              ButtonFill(
                label: "Create Account",
                onTap: () async {
                  _register();

                  if (_success) {
                    Navigator.pushNamed(context, '/dashboard');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
