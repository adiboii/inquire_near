import 'package:flutter/material.dart';
import 'package:inquire_near/models/user.dart' as UserModel;
import 'package:inquire_near/screens/authenticate/home_page.dart';
import 'package:inquire_near/screens/inquiree/dashboard_inquiree.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel.User?>(context);

    if (user == null) {
      return HomePage();
    } else {
      return DashboardInquiree();
    }
  }
}
