import 'package:flutter/material.dart';
import 'package:ilearn/components/b_n_bar.dart';
import 'package:ilearn/screens/home.dart';
import 'package:ilearn/screens/login.dart';
import 'package:ilearn/screens/onboarding.dart';
import 'package:ilearn/screens/phone_verification1.dart';
import 'package:ilearn/screens/phone_verification2.dart';
import 'package:ilearn/screens/sign_up.dart';
import 'package:ilearn/screens/success.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
