// ignore_for_file: prefer_const_constructors

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
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
          "Share Post",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 12,
              ),
              child: Text(
                "Post",
                style: TextStyle(
                  color: Colors.orange.shade500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
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
                    dropDownItemCount: 10,
                    dropDownList: const [
                      DropDownValueModel(
                          name: 'Sexual Harassment', value: "value1"),
                      DropDownValueModel(
                          name: 'Domestic Violence', value: "value2"),
                      DropDownValueModel(name: 'Rape', value: "value3"),
                      DropDownValueModel(name: 'Stalking', value: "value4"),
                      DropDownValueModel(
                          name: 'Cyberbullying', value: "value5"),
                      DropDownValueModel(name: 'Acid Attack', value: "value6"),
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
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "What do you want to talk about?",
                border: InputBorder.none,
              ),
              maxLines: 30,
            ),
          ],
        ),
      ),
    );
  }
}
