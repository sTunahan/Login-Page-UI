import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  String? inputText;
  UserInformation(this.inputText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      child: TextField(
        decoration: InputDecoration(
            hintText: "$inputText",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}
