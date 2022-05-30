import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inquire_near/dashboard.dart';
import 'package:inquire_near/login.dart';
import 'package:inquire_near/profile.dart';
import 'package:inquire_near/signup.dart';
import 'package:inquire_near/home_page.dart';
import 'package:inquire_near/themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(InquireNear());
}

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
        '/dashboard': (context) => Dashboard(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
