// ignore_for_file: prefer_const_constructors

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:justice360/women/Community_Watch/incidentdetails.dart';

import '../General_Reporting/generalreporting.dart';

class CommunityWatch extends StatefulWidget {
  const CommunityWatch({super.key});

  @override
  State<CommunityWatch> createState() => _CommunityWatchState();
}

class _CommunityWatchState extends State<CommunityWatch> {
  late SingleValueDropDownController _cnt;
  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    super.initState();
  }

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
          "Community Watch",
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
            ),
            ListTile(
              leading: Icon(Icons.remove_red_eye_sharp),
              title: Text("Community Watch"),
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
                // ignore: prefer_const_literals_to_create_immutables
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
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Color(0xFFFAFAFA),
                  filled: true,
                ),
              ),
              SizedBox(
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Your Contact Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Color(0xFFFAFAFA),
                  filled: true,
                ),
              ),
              SizedBox(
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Your Current Location",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Color(0xFFFAFAFA),
                  filled: true,
                ),
              ),
              SizedBox(
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Your Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Color(0xFFFAFAFA),
                  filled: true,
                ),
              ),
              SizedBox(
                height: height / 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Relationship with Victim",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    DropDownTextField(
                      controller: _cnt,
                      clearOption: true,
                      validator: (value) {
                        if (value == null) {
                          return "Required field";
                        } else {
                          return null;
                        }
                      },
                      dropDownItemCount: 6,
                      dropDownList: const [
                        DropDownValueModel(name: 'Spouse', value: "value1"),
                        DropDownValueModel(name: 'Partner', value: "value2"),
                        DropDownValueModel(
                            name: 'Family Member', value: "value3"),
                        DropDownValueModel(name: 'Friend', value: "value4"),
                        DropDownValueModel(name: 'Neighbour', value: "value5"),
                        DropDownValueModel(name: 'Stranger', value: "value6"),
                      ],
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 14,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.orange.shade500,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => IncidentDetails()),
                  ),
                ),
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
