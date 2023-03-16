// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:justice360/login.dart';
import 'package:justice360/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade300,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "asset/images/register.png",
                  height: height / 4,
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade500,
                ),
              ),
              SizedBox(
                height: height / 60,
              ),
              Text(
                "Sign In to your account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email Address"),
              ),
              SizedBox(
                height: height / 30,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(
                height: height / 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 1.9),
                child: GestureDetector(
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.shade700,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: height / 16,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                ),
              ),
              SizedBox(
                height: height / 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do not have an account ? "),
                  GestureDetector(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade700,
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => RegisterPage()),
                      ),
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