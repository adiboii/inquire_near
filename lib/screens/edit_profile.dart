import 'package:flutter/material.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';

//change to stateful
class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _nameController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
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
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InTextField(
                        label: "Full Name",
                        icon: Icons.person,
                        controller: _nameController,
                      ),
                      SizedBox(height: 10),
                      InTextField(
                        label: "Email Address",
                        icon: Icons.mail,
                        controller: _emailController,
                      ),
                      SizedBox(height: 10),
                      InTextField(
                        label: "Password",
                        icon: Icons.lock,
                        isObscure: true,
                        controller: _passwordController,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                ButtonFill(label: "Confirm")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
