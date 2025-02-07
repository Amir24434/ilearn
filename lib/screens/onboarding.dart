import 'package:flutter/material.dart';
import 'package:ilearn/components/buttons.dart';
import 'package:ilearn/components/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    // Image(
                    //   image: AssetImage("assetName"),
                    // ),
                    Text(
                      "Numerous free \n trial courses",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        "Free courses for you to \n find your way to learning"),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.2),
              Row(
                children: [
                  Expanded(
                    child: Button1(
                      textColor: Colors.white,
                      color: primaryColor,
                      bgColor: primaryColor,
                      text: "Sign Up",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: size.width * 0.03),
                  Expanded(
                    child: Button1(
                      textColor: primaryColor,
                      color: primaryColor,
                      bgColor: Colors.white,
                      text: "Log In",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
