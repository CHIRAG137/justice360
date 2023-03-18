// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orange.shade500,
        ),
        title: Text(
          "Share Post",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 12,
              ),
              child: Text(
                "Post",
                style: TextStyle(
                  color: Colors.orange.shade500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "What do you want to talk about?",
            border: InputBorder.none,
          ),
          maxLines: 36,
        ),
      ),
    );
  }
}
