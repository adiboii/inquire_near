import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inquire_near/components/Card.dart';
import 'package:inquire_near/components/text_field.dart';
import 'package:inquire_near/themes/app_color.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DashboardInquiree extends StatefulWidget {
  const DashboardInquiree({Key? key}) : super(key: key);

  @override
  State<DashboardInquiree> createState() => _DashboardInquireeState();
}

class _DashboardInquireeState extends State<DashboardInquiree> {
  final TextEditingController _searchController = TextEditingController();
  int? type = 0;

  @override
  Widget build(BuildContext context) {
    //TODO: finish users model
    //final user = FirebaseAuth.instance.currentUser!;
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
                                context, '/dashboard_inquirer');
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Welcome!\nNeed anything?",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    InTextField(
                        hint: 'Search for places',
                        icon: Icons.search,
                        controller: _searchController),
                    SizedBox(height: 20),
                    Text(
                      "Recent Places",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: height * 0.25,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: AppColor.gray,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: AppColor.gray,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: AppColor.gray,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: AppColor.gray,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
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
                      child: InCard(height: height, width: width),
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
