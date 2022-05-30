import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inquire_near/components/custom_button.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future _logout() async {
      await FirebaseAuth.instance.signOut();
      Navigator.popUntil(context, (route) => route.isFirst);
    }

    return Scaffold(
      body: Container(
        child: Center(
          child: ButtonFill(
            label: "Logout",
            onTap: _logout,
          ),
        ),
      ),
    );
  }
}
