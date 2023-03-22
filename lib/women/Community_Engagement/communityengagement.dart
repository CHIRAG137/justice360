// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:justice360/components/drawer.dart';
import 'package:justice360/women/Community_Engagement/comments.dart';
import 'package:justice360/women/Community_Engagement/post.dart';
import 'package:justice360/women/Community_Watch/communitywatch.dart';
import 'package:justice360/women/General_Reporting/generalreporting.dart';
import 'package:justice360/women/Virtual_Buddy/virtualbuddy.dart';
import 'package:justice360/women/emergencynotifiactions.dart';

class CommunityEngagement extends StatefulWidget {
  const CommunityEngagement({super.key});

  @override
  State<CommunityEngagement> createState() => _CommunityEngagementState();
}

class _CommunityEngagementState extends State<CommunityEngagement> {
  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orange.shade500,
        ),
        title: Text(
          "Community Engagement",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                value: 0,
                child: GestureDetector(
                  child: Text("Home"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => CommunityEngagement()),
                    ),
                  ),
                ),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: GestureDetector(
                  child: Text("Post"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Post()),
                    ),
                  ),
                ),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text("Logout"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("My home menu is selected.");
            } else if (value == 1) {
              print("Post menu is selected.");
            } else if (value == 2) {
              print("Logout menu is selected.");
            }
          }),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              color: Color.fromARGB(255, 246, 243, 243),
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "23.03.2023",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Colors.teal.shade500,
                        ),
                        child: Text(
                          "Sexual Harassment",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Stay focused on ypur financial goal. Invest for long term to mitigate risk.",
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                            color: Colors.teal.shade500,
                          ),
                          SizedBox(
                            width: width / 48,
                          ),
                          Text(
                            "32 likes",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "39 comments",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: width / 24,
                          ),
                          Text(
                            "32 reposts",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Like"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Comments()),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment_rounded,
                              size: 16,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Comment"),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.repeat_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Repost"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Color.fromARGB(255, 246, 243, 243),
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "23.03.2023",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Colors.teal.shade500,
                        ),
                        child: Text(
                          "Sexual Harassment",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Stay focused on ypur financial goal. Invest for long term to mitigate risk.",
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                            color: Colors.teal.shade500,
                          ),
                          SizedBox(
                            width: width / 48,
                          ),
                          Text(
                            "32 likes",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "39 comments",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: width / 24,
                          ),
                          Text(
                            "32 reposts",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Like"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Comments()),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment_rounded,
                              size: 16,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Comment"),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.repeat_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Repost"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Color.fromARGB(255, 246, 243, 243),
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "23.03.2023",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Colors.teal.shade500,
                        ),
                        child: Text(
                          "Sexual Harassment",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Stay focused on ypur financial goal. Invest for long term to mitigate risk.",
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                            color: Colors.teal.shade500,
                          ),
                          SizedBox(
                            width: width / 48,
                          ),
                          Text(
                            "32 likes",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "39 comments",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: width / 24,
                          ),
                          Text(
                            "32 reposts",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Like"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Comments()),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment_rounded,
                              size: 16,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Comment"),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.repeat_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Repost"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Color.fromARGB(255, 246, 243, 243),
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "23.03.2023",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Colors.teal.shade500,
                        ),
                        child: Text(
                          "Sexual Harassment",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Stay focused on ypur financial goal. Invest for long term to mitigate risk.",
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                            color: Colors.teal.shade500,
                          ),
                          SizedBox(
                            width: width / 48,
                          ),
                          Text(
                            "32 likes",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "39 comments",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: width / 24,
                          ),
                          Text(
                            "32 reposts",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Like"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Comments()),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment_rounded,
                              size: 16,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Comment"),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.repeat_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Repost"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Color.fromARGB(255, 246, 243, 243),
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "23.03.2023",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Colors.teal.shade500,
                        ),
                        child: Text(
                          "Sexual Harassment",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Stay focused on ypur financial goal. Invest for long term to mitigate risk.",
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                            color: Colors.teal.shade500,
                          ),
                          SizedBox(
                            width: width / 48,
                          ),
                          Text(
                            "32 likes",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "39 comments",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: width / 24,
                          ),
                          Text(
                            "32 reposts",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Like"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Comments()),
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment_rounded,
                              size: 16,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Comment"),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.repeat_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Repost"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
