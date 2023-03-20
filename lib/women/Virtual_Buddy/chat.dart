// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
          "Chats",
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
            Text(
              "12 March",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color.fromARGB(255, 246, 243, 243),
              margin: EdgeInsets.only(
                right: width / 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 16,
                    ),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                      bottom: 12,
                    ),
                    child: Text(
                      "09:00",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
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
              color: Color.fromARGB(255, 246, 243, 243),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 16,
                    ),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                      bottom: 12,
                    ),
                    child: Text(
                      "09:00",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
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
              color: Color.fromARGB(255, 246, 243, 243),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 16,
                    ),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                      bottom: 12,
                    ),
                    child: Text(
                      "09:00",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
             Text(
              "12 March",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color.fromARGB(255, 246, 243, 243),
              margin: EdgeInsets.only(
                right: width / 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                      top: 16,
                    ),
                    child: Text(
                      "Yeah, It was really awesome to hear such a great news",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                      bottom: 12,
                    ),
                    child: Text(
                      "09:00",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
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
