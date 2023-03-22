// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:justice360/components/drawer.dart';
import 'package:justice360/women/General_Reporting/perpetrator.dart';

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
      drawer: CustomDrawer(),
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
  return TextFormField(
    keyboardType: inputType,
    decoration: InputDecoration(
      hintText: hintText,
      isDense: dense,
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
    minLines: minLines,
    maxLines: maxLines,
  );
}
