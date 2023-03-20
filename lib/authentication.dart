import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:justice360/login.dart';
import 'package:justice360/onboarding.dart';
import 'package:justice360/women/womendashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authenticate extends StatefulWidget {
  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  bool? firstvisit = true;

  checkfirstvisit() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('firsttime') != null) {
      setState(() {
        firstvisit = prefs.getBool('firsttime');
      });
    }
  }

  @override
  void initState() {
    checkfirstvisit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (auth.currentUser != null) {
      return WomenDashboard();
    } else {
      if (firstvisit == true) {
        return OnboardingScreen();
      } else {
        return LoginPage();
      }
    }
  }
}
