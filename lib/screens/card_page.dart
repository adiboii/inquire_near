import 'package:flutter/material.dart';
import 'package:inquire_near/components/Card.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/list_item.dart';
import 'package:inquire_near/themes/app_color.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
          "Your Card",
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: [
            inCard(height: height, width: width),
            SizedBox(height: 10),
            Row(
              children: [
                ButtonFill(
                  label: "Top-Up",
                  width: 170,
                  onTap: () {
                    Navigator.pushNamed(context, '/top-up');
                  },
                ),
                SizedBox(width: 10),
                ButtonFill(
                  label: "Block Card",
                  width: 170,
                  color: AppColor.gray,
                  textColor: Colors.black,
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Transactions",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: height * 0.45,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          InListItem(
                              color: Colors.red,
                              type: "Payment",
                              amount: "- ₱25.00"),
                          SizedBox(height: 10),
                          InListItem(
                              color: Colors.green,
                              type: "Top-up",
                              amount: "+ ₱150.00"),
                          SizedBox(height: 10),
                          InListItem(
                              color: Colors.red,
                              type: "Payment",
                              amount: "- ₱25.00"),
                          SizedBox(height: 10),
                          InListItem(
                              color: Colors.green,
                              type: "Top-up",
                              amount: "+ ₱150.00"),
                          SizedBox(height: 10),
                          InListItem(
                              color: Colors.red,
                              type: "Payment",
                              amount: "- ₱25.00"),
                          SizedBox(height: 10),
                          InListItem(
                              color: Colors.green,
                              type: "Top-up",
                              amount: "+ ₱150.00"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
