import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 150, 40, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Find the things\nyou need",
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: 22,
                    ),
              ),
            ),
            Center(
              child: Image(
                width: 250,
                image: AssetImage("assets/images/homepage.jpg"),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome to"),
                  SizedBox(height: 5),
                  Text(
                    "InquireNear",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 55,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 55,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: AppColor.primary),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: AppColor.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
