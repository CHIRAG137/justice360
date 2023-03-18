// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:justice360/women/Community_Engagement/communityengagement.dart';
import 'package:justice360/women/Community_Watch/communitywatch.dart';
import 'General_Reporting/generalreporting.dart';

class WomenDashboard extends StatefulWidget {
  const WomenDashboard({super.key});

  @override
  State<WomenDashboard> createState() => _WomenDashboardState();
}

class _WomenDashboardState extends State<WomenDashboard> {
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
          "justice360",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
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
               onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => CommunityEngagement()),
                ),
              ),
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
            SizedBox(height: height / 24),
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
    );
  }
}
