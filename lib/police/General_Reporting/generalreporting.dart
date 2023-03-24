// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:justice360/components/policedrawer.dart';
import 'package:justice360/police/General_Reporting/perpetrator.dart';

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
      drawer: PoliceCustomDrawer(),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(TextInputType.text, "Your Name", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.number, "Age", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.phone, "Contact Number", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.text, "Address", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.datetime, "Date of Incident", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Type of Crime", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Location of Incident", true, 1, 3),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                  TextInputType.text, "Description of Incident", true, 1, 10),
              SizedBox(height: 56),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.orange.shade500,
                  padding: EdgeInsets.symmetric(
                    horizontal: width / 2.6,
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
            ],
          ),
        ),
      ),
    );
  }
}

Widget CustomTextFormField(TextInputType inputType, String hintText, bool dense,
    int minLines, int maxLines) {
  return Container(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        hintText,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black38),
      ),
      SizedBox(
        height: 8,
      ),
      TextFormField(
        keyboardType: inputType,
        decoration: InputDecoration(
          isDense: dense,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.orange.shade500,
              style: BorderStyle.solid,
            ),
          ),
        ),
        minLines: minLines,
        maxLines: maxLines,
      ),
    ],
  ));
}
