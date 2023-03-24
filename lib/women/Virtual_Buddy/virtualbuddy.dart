// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:justice360/components/womendrawer.dart';
import 'package:justice360/women/Virtual_Buddy/chat.dart';
import 'package:justice360/women/Virtual_Buddy/connect.dart';

class VirtualBuddy extends StatefulWidget {
  const VirtualBuddy({super.key});

  @override
  State<VirtualBuddy> createState() => _VirtualBuddyState();
}

class _VirtualBuddyState extends State<VirtualBuddy> {
  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orange.shade500,
        ),
        title: Text(
          "Virtual Buddy",
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
                  child: Text("Connect"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Connect()),
                    ),
                  ),
                ),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("Logout"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("My connect menu is selected.");
            } else if (value == 1) {
              print("Logout menu is selected.");
            }
          }),
        ],
      ),
      drawer: WomenCustomDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 16,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Chat()),
                ),
              ),
              child: Contact("Kiara Advani", "Delivered", DateTime.now()),
            ),
            Divider(
              thickness: 1,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

Widget Contact(String name, String status, DateTime time) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Text(
                name[0],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.purple,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.send,
                      size: 12,
                      color: Colors.red.shade500,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Text(
          "${time.hour.toString()} : ${time.minute.toString()}",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}
