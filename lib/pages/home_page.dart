import 'package:chatty_apps/theme.dart';
import 'package:flutter/material.dart';
import '';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile_pic.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: userNameTextStyle,
              ),
              Text(
                'Travel Freelancer',
                style: userBioTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
