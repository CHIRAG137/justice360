// ignore_for_file: prefer_const_constructors

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:justice360/women/General_Reporting/witness.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Relationship with Perpetrator",
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
                        DropDownValueModel(name: 'Stranger', value: "value5"),
                        DropDownValueModel(name: 'Others', value: "value6"),
                      ],
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender",
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
                      dropDownItemCount: 3,
                      dropDownList: const [
                        DropDownValueModel(name: 'Male', value: "value1"),
                        DropDownValueModel(name: 'Female', value: "value2"),
                        DropDownValueModel(name: 'Others', value: "value3"),
                      ],
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Distinguishing Features (if any)",
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
                        DropDownValueModel(name: 'Tatoos', value: "value1"),
                        DropDownValueModel(name: 'Birthmarks', value: "value2"),
                        DropDownValueModel(name: 'Scars', value: "value3"),
                        DropDownValueModel(name: 'Piercings', value: "value4"),
                        DropDownValueModel(name: 'None', value: "value5"),
                      ],
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(TextInputType.text,
                  "Language Spoken by Perpetrator", true, 1, 1),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Direction in which perpetrator went after incident",
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
                        DropDownValueModel(name: 'East', value: "value1"),
                        DropDownValueModel(name: 'West', value: "value2"),
                        DropDownValueModel(name: 'North', value: "value3"),
                        DropDownValueModel(name: 'South', value: "value4"),
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
                    horizontal: width / 2.6,
                    vertical: 16,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Witness()),
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
