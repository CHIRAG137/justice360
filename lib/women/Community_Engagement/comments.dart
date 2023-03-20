// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
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
          "Comments",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                right: width / 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      color: Color.fromARGB(255, 246, 243, 243),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Like",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Reply",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "3 Replies",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: width / 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      color: Color.fromARGB(255, 246, 243, 243),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Like",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Reply",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "3 Replies",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: width / 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      color: Color.fromARGB(255, 246, 243, 243),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Like",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Reply",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "3 Replies",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                right: width / 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      color: Color.fromARGB(255, 246, 243, 243),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Like",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Reply",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "3 Replies",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Leave your thoughts here....",
              suffixIcon: Icon(Icons.send),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
