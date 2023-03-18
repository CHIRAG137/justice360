// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:justice360/women/Community_Engagement/comments.dart';
import 'package:justice360/women/Community_Engagement/post.dart';
import 'package:justice360/women/Community_Watch/communitywatch.dart';
import 'package:justice360/women/General_Reporting/generalreporting.dart';

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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: height / 50,
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text("General Reporting"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => GeneralReporting()),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.support_agent),
              title: Text("Support Groups"),
            ),
            ListTile(
              leading: Icon(Icons.groups_rounded),
              title: Text("Community Engagement"),
            ),
            ListTile(
              leading: Icon(Icons.remove_red_eye_sharp),
              title: Text("Community Watch"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => CommunityWatch()),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.playlist_add_check_outlined),
              title: Text("Personalized Safety Plan"),
            ),
            ListTile(
              leading: Icon(Icons.girl_rounded),
              title: Text("Virtual Buddy"),
            ),
            ListTile(
              leading: Icon(Icons.report_problem_rounded),
              title: Text("Personalized Risk Assessment"),
            ),
            ListTile(
              leading: Icon(Icons.map_rounded),
              title: Text("Smart Mapping"),
            ),
            ListTile(
              leading: Icon(Icons.cases_rounded),
              title: Text("Virtual Legal Clinic"),
            ),
            ListTile(
              leading: Icon(Icons.emergency_rounded),
              title: Text("Emergency Notifications"),
            ),
            SizedBox(height: height / 32),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                direction: Axis.vertical,
                spacing: 10,
                children: [
                  Text(
                    "Developed By",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Chirag Goel",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Utsav Rai",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Aditya Raj",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
                      Column(
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
                      Column(
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
                      Column(
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
          ],
        ),
      ),
    );
  }
}
