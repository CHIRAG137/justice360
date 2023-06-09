// ignore_for_file: prefer_const_constructors

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:justice360/women/Community_Watch/perpetratordetails.dart';

class IncidentDetails extends StatefulWidget {
  const IncidentDetails({super.key});

  @override
  State<IncidentDetails> createState() => _IncidentDetailsState();
}

class _IncidentDetailsState extends State<IncidentDetails> {
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
          "Incident Details",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(
          right: 24,
          left: 24,
          top: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                  TextInputType.datetime, "Date of Incident", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.datetime, "Time of Incident", true, 1, 1),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Location of Incident", true, 1, 3),
              SizedBox(height: 24),
              CustomTextFormField(
                  TextInputType.text, "Description of Incident", true, 1, 3),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Presence of Weapon",
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
                      dropDownItemCount: 4,
                      dropDownList: const [
                        DropDownValueModel(name: 'Knife', value: "value1"),
                        DropDownValueModel(name: 'Gun', value: "value2"),
                        DropDownValueModel(
                            name: 'Any Other Object', value: "value3"),
                        DropDownValueModel(name: 'None', value: "value4"),
                      ],
                      onChanged: (val) {},
                    ),
                  ],
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
                      "Actions taken during the Incident",
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
                        DropDownValueModel(
                            name: 'Intervening', value: "value1"),
                        DropDownValueModel(
                            name: 'Calling for help', value: "value2"),
                        DropDownValueModel(
                            name: 'Leaving the Scene', value: "value3"),
                        DropDownValueModel(
                            name: 'Documenting the Incident', value: "value4"),
                        DropDownValueModel(
                            name: 'Reporting the Incident', value: "value5"),
                        DropDownValueModel(
                            name: 'Offering a Ride', value: "value6"),
                        DropDownValueModel(
                            name: 'Providing Shelter', value: "value7"),
                        DropDownValueModel(
                            name: 'Accompanying them to seek Medical Attention',
                            value: "value8"),
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
                    builder: ((context) => PerpetratorDetails()),
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
