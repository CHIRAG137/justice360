import 'package:flutter/material.dart';

class Invitations extends StatefulWidget {
  const Invitations({super.key});

  @override
  State<Invitations> createState() => _InvitationsState();
}

class _InvitationsState extends State<Invitations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orange.shade500,
        ),
        title: Text(
          "My Invitations",
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
          ],
        ),
      ),
    );
  }
}
