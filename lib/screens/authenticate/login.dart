import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';
import 'package:inquire_near/services/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  String error = "";
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool _success;
  late String? _userEmail;

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "Sign in to your account",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontSize: 32,
                          ),
                    ),
                    SizedBox(height: 30),
                    // TODO: update INTextField
                    // InTextField(
                    //   label: "Email Address",
                    //   icon: Icons.mail,
                    //   controller: _emailController,
                    // ),
                    TextFormField(
                      // TODO: transfer to constant
                      decoration: InputDecoration(
                          hintText: "Email",
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColor.primary, width: 1),
                          )),
                      validator: (val) =>
                          val!.isEmpty ? "Please enter your username" : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 15),
                    // InTextField(
                    //   label: "Password",
                    //   icon: Icons.lock,
                    //   isObscure: true,
                    //   controller: _passwordController,
                    // ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade300, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColor.primary, width: 1),
                        ),
                      ),
                      obscureText: true,
                      validator: (val) =>
                          val!.isEmpty ? "Please enter your password" : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              ButtonFill(
                label: "Sign In",
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    dynamic result =
                        await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() =>
                          error = "Please supply valid email and password");
                    } else
                      Navigator.pushReplacementNamed(
                          context, '/dashboard_inquiree');
                  }
                },
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
