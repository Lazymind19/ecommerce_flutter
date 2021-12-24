import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey)

          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter email here",
            hintStyle: TextStyle(
              color: Colors.grey.shade300,
            ),
            border: InputBorder.none
          ),
        ),),
        Container(
          padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey)

          ),
        ),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter Password here",

            hintStyle: TextStyle(
              color: Colors.grey.shade300,
            ),
            border: InputBorder.none
          ),
        ),),
      ],
    );
  }
}
