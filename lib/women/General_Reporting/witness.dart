// ignore_for_file: prefer_const_constructors

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:justice360/women/General_Reporting/injurydetails.dart';

class Witness extends StatefulWidget {
  const Witness({super.key});

  @override
  State<Witness> createState() => _WitnessState();
}

class _WitnessState extends State<Witness> {
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
          "Witness Details",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                  TextInputType.text, "Witness's Name", true, 1, 1),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Relationship with Witness",
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
                        DropDownValueModel(name: 'Spouse', value: "value1"),
                        DropDownValueModel(name: 'Partner', value: "value2"),
                        DropDownValueModel(
                            name: 'Family Member', value: "value3"),
                        DropDownValueModel(name: 'Friend', value: "value4"),
                        DropDownValueModel(name: 'Stranger', value: "value5"),
                      ],
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                  TextInputType.phone, "Witness's Contact Number", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Witness's Address", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.phone, "Witness's Age", true, 1, 1),
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
                    builder: ((context) => InjuryDetails()),
                  ),
                ),
                child: const Text('Next'),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => _dialogBuilder(context),
                child: Text(
                  "Skip and Submit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade600,
                  ),
                ),
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

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Are You Sure ?'),
        content: const Text('Do you really want to register this report ?'),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Decline'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Agree'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}