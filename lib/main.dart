import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inquire_near/card_page.dart';
import 'package:inquire_near/confirm_top-up.dart';
import 'package:inquire_near/dashboard_inquiree.dart';
import 'package:inquire_near/dashboard_inquirer.dart';
import 'package:inquire_near/edit_profile.dart';
import 'package:inquire_near/inquiree_request.dart';
import 'package:inquire_near/login.dart';
import 'package:inquire_near/profile.dart';
import 'package:inquire_near/signup.dart';
import 'package:inquire_near/home_page.dart';
import 'package:inquire_near/themes/app_theme.dart';
import 'package:inquire_near/top-up.dart';

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
        '/dashboard_inquiree': (context) => DashboardInquiree(),
        '/dashboard_inquirer': (context) => DashboardInquirer(),
        '/profile': (context) => Profile(),
        '/edit_profile': (context) => EditProfile(),
        '/card_page': (context) => CardPage(),
        '/top-up': (context) => TopUp(),
        '/confirm_top-up': (context) => ConfirmTopUpPage(),
        '/inquiree_request': (context) => AcceptOrRejectInquireePage(),
      },
    );
  }
}
