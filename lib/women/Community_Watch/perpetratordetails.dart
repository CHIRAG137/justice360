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
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Height",
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
                  hintText: "Weight",
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
                  hintText: "Complexion",
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
                  hintText: "Description of the Clothing",
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
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Estimated Age",
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
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Hair Color",
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
                  hintText: "Hair Length",
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
                  hintText: "Hair Style",
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
                height: height / 32,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Language Spoken by Perpetrator",
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
                height: height / 20,
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
                onPressed: () => _dialogBuilder(context),
                child: const Text('Submit'),
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
