import 'package:flutter/material.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';
import 'package:inquire_near/components/icon_container.dart';
import 'package:inquire_near/services/auth.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String confirmPassword = "";
  String email = "";
  String error = "";
  String name = "";
  String password = "";

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

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
              Form(
                key: _formKey,
                // TODO: update INTextField
                // child: Column(
                //   children: [
                //     SizedBox(height: 10),
                //     InTextField(
                //       label: "Full Name",
                //       icon: Icons.person,
                //       controller: _nameController,
                //     ),
                //     SizedBox(height: 15),
                //     InTextField(
                //       label: "Email Address",
                //       icon: Icons.mail,
                //       controller: _emailController,
                //     ),
                //     SizedBox(height: 15),
                //     InTextField(
                //       label: "Password",
                //       icon: Icons.lock,
                //       isObscure: true,
                //       controller: _passwordController,
                //     ),
                //     SizedBox(height: 15),
                //     InTextField(
                //       label: "Confirm Password",
                //       icon: Icons.lock,
                //       isObscure: true,
                //       controller: _confirmPasswordController,
                //     ),
                //   ],
                // ),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (val) => val!.isEmpty ? "Enter a name" : null,
                      onChanged: (val) {
                        setState(() => name = val);
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      validator: (val) =>
                          val!.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                        obscureText: true,
                        validator: (val) => val!.length <= 6
                            ? "Enter a password with more than 6 characters"
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        }),
                    SizedBox(height: 10),
                    TextFormField(
                        obscureText: true,
                        validator: (val) =>
                            val != password ? "Passwords do not match" : null,
                        onChanged: (val) {
                          setState(() => confirmPassword = val);
                        }),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ButtonFill(
                label: "Create Account",
                onTap: () async {
                  // TODO: sign up with firebase
                  if (_formKey.currentState!.validate()) {
                    dynamic result = await _auth.registerWithEmailAndPassword(
                        email, password);
                    if (result == null) {
                      setState(() =>
                          error = "Please supply valid email and password");
                    }
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
