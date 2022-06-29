import 'package:flutter/material.dart';
import 'package:inquire_near/components/custom_button.dart';
import 'package:inquire_near/components/text_field.dart';
import 'package:inquire_near/themes/app_color.dart';

class TopUp extends StatelessWidget {
  final TextEditingController _topUpValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          "Top-Up",
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(35, 40, 35, 0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 10,
                      child: ColoredBox(color: AppColor.primary),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Balance",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(fontSize: 20),
                        ),
                        Text(
                          "₱455.20",
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(fontSize: 32),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter amount you wish\nto add to your wallet",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    inTextField(
                      icon: Icons.php_outlined,
                      controller: _topUpValue,
                      hint: "0.00",
                      type: TextInputType.number,
                    ),
                    SizedBox(height: 30),
                    ButtonFill(
                        label: "Confirm",
                        onTap: () {
                          Navigator.pushNamed(context, '/confirm_top-up');
                        }),
                  ],
                ),
              ),
            ],
          ) //end,
          ),
    );
  }
}
