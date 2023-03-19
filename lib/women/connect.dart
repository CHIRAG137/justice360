// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
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
          "Manage my Connections",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Invitations",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade700,
                  ),
                ),
                Icon(Icons.navigate_next_rounded),
              ],
            ),
            Divider(
              thickness: 1,
              height: 16,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text(
                          "K",
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
                            "Kiara Advani",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.orange.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Mutual Connections",
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
                  Row(
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color.fromARGB(31, 162, 160, 160),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_sharp,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Accept",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text(
                          "K",
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
                            "Kiara Advani",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.orange.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Mutual Connections",
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
                  Row(
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color.fromARGB(31, 162, 160, 160),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_sharp,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Accept",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text(
                          "K",
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
                            "Kiara Advani",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.orange.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Mutual Connections",
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
                  Row(
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color.fromARGB(31, 162, 160, 160),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_sharp,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Accept",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text(
                          "K",
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
                            "Kiara Advani",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.orange.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Mutual Connections",
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
                  Row(
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color.fromARGB(31, 162, 160, 160),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_sharp,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Accept",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text(
                          "K",
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
                            "Kiara Advani",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.orange.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Mutual Connections",
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
                  Row(
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color.fromARGB(31, 162, 160, 160),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_sharp,
                                size: 17,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Accept",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              height: 30,
            ),
            Text(
              "Recommended for you",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 20,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              color: Colors.grey.shade300,
                              height: 50,
                              child: Text(""),
                              width: 160,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 40, right: 40, top: 10),
                              child: CircleAvatar(
                                child: Text(
                                  "K",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                radius: 40,
                                backgroundColor: Colors.orange.shade500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Kiara Advani",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "60",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.orange.shade500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Mutual Connections",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Connect",
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.blue.shade700,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              color: Colors.grey.shade300,
                              height: 50,
                              child: Text(""),
                              width: 160,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 40, right: 40, top: 10),
                              child: CircleAvatar(
                                child: Text(
                                  "K",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                radius: 40,
                                backgroundColor: Colors.orange.shade500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Kiara Advani",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "60",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.orange.shade500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Mutual Connections",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Connect",
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.blue.shade700,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              color: Colors.grey.shade300,
                              height: 50,
                              child: Text(""),
                              width: 160,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 40, right: 40, top: 10),
                              child: CircleAvatar(
                                child: Text(
                                  "K",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                radius: 40,
                                backgroundColor: Colors.orange.shade500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Kiara Advani",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "60",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.orange.shade500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Mutual Connections",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Connect",
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.blue.shade700,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              color: Colors.grey.shade300,
                              height: 50,
                              child: Text(""),
                              width: 160,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 40, right: 40, top: 10),
                              child: CircleAvatar(
                                child: Text(
                                  "K",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                radius: 40,
                                backgroundColor: Colors.orange.shade500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Kiara Advani",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "60",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.orange.shade500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Mutual Connections",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Connect",
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.blue.shade700,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
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
