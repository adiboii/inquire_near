import 'package:flutter/material.dart';
import 'package:inquire_near/screens/onboarding.dart';

class OBPage extends StatelessWidget {
  final String imageURL;
  final String title;
  final String subtitle;

  OBPage({required this.imageURL, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imageURL),
            width: 250,
          ),
          SizedBox(height: 60),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              SizedBox(height: 20),
              Text(
                subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
