import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:inquire_near/screens/card_page.dart';
import 'package:inquire_near/screens/confirm_top-up.dart';
import 'package:inquire_near/screens/inquiree/dashboard_inquiree.dart';
import 'package:inquire_near/screens/inquirer/dashboard_inquirer.dart';
import 'package:inquire_near/screens/edit_profile.dart';
import 'package:inquire_near/screens/authenticate/home_page.dart';
import 'package:inquire_near/screens/inquiree_request.dart';
import 'package:inquire_near/screens/authenticate/login.dart';
import 'package:inquire_near/screens/onboarding.dart';
import 'package:inquire_near/screens/profile.dart';
import 'package:inquire_near/screens/authenticate/sign_up.dart';
import 'package:inquire_near/screens/splash.dart';
import 'package:inquire_near/screens/top-up.dart';
import 'package:inquire_near/screens/wrapper.dart';
import 'package:inquire_near/services/auth.dart';
import 'package:inquire_near/themes/app_theme.dart';
import 'package:inquire_near/models/user.dart' as UserModel;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(InquireNear(showHome: showHome));
}

class InquireNear extends StatelessWidget {
  final bool showHome;

  const InquireNear({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel.User?>.value(
      value: AuthService().user,
      initialData: null,
      catchError: (_, __) => null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemeData,
        home: Wrapper(),
        routes: {
          '/splash': (context) => Splash(),
          '/onboarding': (context) => OnboardingPage(),
          '/home_page': (context) => HomePage(),
          '/wrapper': (context) => Wrapper(),
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
      ),
    );
  }
}
