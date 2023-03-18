// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:justice360/women/General_Reporting/perpetrator.dart';

import '../Community_Engagement/communityengagement.dart';
import '../Community_Watch/communitywatch.dart';

class GeneralReporting extends StatefulWidget {
  const GeneralReporting({super.key});

  @override
  State<GeneralReporting> createState() => _GeneralReportingState();
}

class _GeneralReportingState extends State<GeneralReporting> {
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
          "General Reporting",
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
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 56,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
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
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Your Age",
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
                  hintText: "Contact Number",
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
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: "Date of Incident",
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Type of Crime",
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
                      dropDownItemCount: 5,
                      dropDownList: const [
                        DropDownValueModel(
                            name: 'Sexual Harassment', value: "value1"),
                        DropDownValueModel(
                            name: 'Domestic Violence', value: "value2"),
                        DropDownValueModel(name: 'Rape', value: "value3"),
                        DropDownValueModel(name: 'Stalking', value: "value4"),
                        DropDownValueModel(
                            name: 'Cyberbullying', value: "value5"),
                        DropDownValueModel(
                            name: 'Acid Attack', value: "value6"),
                        DropDownValueModel(
                            name: 'Forced Marriage', value: "value7"),
                        DropDownValueModel(
                            name: 'Child Marriage', value: "value8"),
                        DropDownValueModel(
                            name: 'Honor Killing', value: "value9"),
                        DropDownValueModel(name: 'Others', value: "value10"),
                      ],
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Location of Incident",
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
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Description of Incident",
                  isDense: true,
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
                maxLines: 10,
                minLines: 6,
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
                    builder: ((context) => PerpetratorDetails()),
                  ),
                ),
                child: const Text('Next'),
              ),
              SizedBox(
                height: height / 56,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
