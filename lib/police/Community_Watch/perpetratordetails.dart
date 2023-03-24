// ignore_for_file: prefer_const_constructors

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class PerpetratorDetails extends StatefulWidget {
  const PerpetratorDetails({super.key});

  @override
  State<PerpetratorDetails> createState() => _PerpetratorDetailsState();
}

class _PerpetratorDetailsState extends State<PerpetratorDetails> {
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
          "Perpetrator Details",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 16,
          right: 24,
          left: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                  TextInputType.text, "Perpetrator' Name", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.text,
                  "Relationship with Perpetrator", true, 1, 1),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(TextInputType.phone,
                  "Perpetrator's Contact Number", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Perpetrator's Address", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.number, "Height", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.number, "Weight", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.text, "Complexion", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Clothing Description", true, 1, 4),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.number, "Estimated Age", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.text, "Gender", true, 1, 1),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(TextInputType.text, "Hair Color", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.number, "Hair Length", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.text, "Hair Style", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(TextInputType.text,
                  "Distinguishing Features (If any)", true, 1, 1),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(TextInputType.text,
                  "Language Spoken by Perpetrator", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text,
                  "Direction in which the perpetrator went after incident",
                  true,
                  1,
                  1),
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
