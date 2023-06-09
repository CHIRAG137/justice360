// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:justice360/components/womendrawer.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orange.shade500,
        ),
        title: Text(
          "Women Dashboard",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
     drawer: WomenCustomDrawer(),
      body: SingleChildScrollView(child:Column(children: [Image.asset("asset/images/dashboard.jpg"),],),),
    );
  }
}
