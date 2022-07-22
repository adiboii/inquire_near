import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/icon_label.dart';
import 'package:inquire_near/services/auth.dart';
import 'package:inquire_near/themes/app_color.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    // Future _logout() async {
    //   await FirebaseAuth.instance.signOut();
    //   Navigator.popUntil(context, (route) => route.isFirst);
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage(
                      'assets/images/profile.png',
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    'Cymmer John Maranga',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 10.0),
                  ButtonFill(
                    label: "Edit Profile",
                    width: 210,
                    onTap: () {
                      Navigator.pushNamed(context, '/edit_profile');
                    },
                  ),
                  SizedBox(height: 5.0),
                  ButtonFill(
                    label: "Deactivate Account",
                    width: 210,
                    color: AppColor.red,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  inLabel(icon: Icons.help, label: "Help Center"),
                  SizedBox(height: 20),
                  inLabel(icon: Icons.question_answer, label: "FAQ"),
                  SizedBox(height: 20),
                  inLabel(icon: Icons.lock, label: "Privacy Policy"),
                  SizedBox(height: 20),
                  inLabel(icon: Icons.notes, label: "Terms of Service"),
                  SizedBox(height: 20),
                  inLabel(icon: Icons.info_sharp, label: "About Busify"),
                  SizedBox(height: 20),
                  inLabel(
                    icon: Icons.exit_to_app,
                    label: "Sign Out",
                    onTap: () async {
                      await _auth.signOut().then((value) =>
                          Navigator.pushReplacementNamed(context, '/wrapper'));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
