// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:justice360/women/Community_Engagement/communityengagement.dart';
import 'package:justice360/women/Community_Watch/communitywatch.dart';
import 'package:justice360/women/General_Reporting/generalreporting.dart';
import 'package:justice360/women/Virtual_Buddy/virtualbuddy.dart';
import 'package:justice360/women/emergencynotifiactions.dart';

class WomenCustomDrawer extends StatelessWidget {
  const WomenCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          SizedBox(
            height: 20,
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
          // ListTile(
          //   leading: Icon(Icons.support_agent),
          //   title: Text("Support Groups"),
          // ),
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
          // ListTile(
          //   leading: Icon(Icons.playlist_add_check_outlined),
          //   title: Text("Personalized Safety Plan"),
          // ),
          ListTile(
            leading: Icon(Icons.girl_rounded),
            title: Text("Virtual Buddy"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => VirtualBuddy()),
              ),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.report_problem_rounded),
          //   title: Text("Personalized Risk Assessment"),
          // ),
          // ListTile(
          //   leading: Icon(Icons.map_rounded),
          //   title: Text("Smart Mapping"),
          // ),
          // ListTile(
          //   leading: Icon(Icons.cases_rounded),
          //   title: Text("Virtual Legal Clinic"),
          // ),
          ListTile(
            leading: Icon(Icons.emergency_rounded),
            title: Text("Emergency Notifications"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => EmergencyNotifications()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
