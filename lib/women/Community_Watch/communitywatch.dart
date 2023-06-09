// ignore_for_file: prefer_const_constructors

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:justice360/components/womendrawer.dart';
import 'package:justice360/women/Community_Watch/incidentdetails.dart';

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
      drawer: WomenCustomDrawer(),
      body: Container(
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
              CustomTextFormField(
                  TextInputType.phone, "Your Contact Number", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Your Curent Location", true, 1, 3),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Your Address", true, 1, 3),
              SizedBox(height: 24),
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
                height: 56,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.orange.shade500,
                  padding: EdgeInsets.symmetric(
                    horizontal: width / 2.5,
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
