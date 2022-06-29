import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inquire_near/components/Card.dart';
import 'package:inquire_near/components/text_field.dart';
import 'package:inquire_near/themes/app_color.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DashboardInquirer extends StatefulWidget {
  const DashboardInquirer({Key? key}) : super(key: key);

  @override
  State<DashboardInquirer> createState() => _DashboardInquirerState();
}

class _DashboardInquirerState extends State<DashboardInquirer> {
  final TextEditingController _searchController = TextEditingController();
  int? type = 1;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            icon: Icon(Icons.person),
                            color: Colors.white,
                          ),
                        ),
                        ToggleSwitch(
                          minWidth: width * 0.30,
                          initialLabelIndex: type,
                          totalSwitches: 2,
                          activeBgColor: [AppColor.primary],
                          activeFgColor: Colors.white,
                          inactiveFgColor: AppColor.textColor,
                          inactiveBgColor: Colors.grey[200],
                          labels: ['Inquiree', 'Inquirer'],
                          onToggle: (index) {
                            type = index;
                            setState(() {
                              type = index;
                            });
                            Navigator.pushReplacementNamed(
                                context, '/dashboard_inquiree');
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Welcome!",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Current Location",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/inquiree_request');
                      },
                      child: Container(
                        height: height * 0.25,
                        decoration: BoxDecoration(
                          color: AppColor.gray,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Your Wallet",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/card_page');
                      },
                      child: inCard(height: height, width: width),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
