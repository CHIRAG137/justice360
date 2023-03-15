// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:justice360/onboarding.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}