import 'package:flutter/material.dart';
import 'package:inquire_near/login.dart';
import 'package:inquire_near/signup.dart';
import 'package:inquire_near/home_page.dart';
import 'package:inquire_near/themes/app_theme.dart';

void main() => runApp(InquireNear());

class InquireNear extends StatelessWidget {
  const InquireNear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData,
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/sign_up': (context) => SignUpPage(),
      },
    );
  }
}
