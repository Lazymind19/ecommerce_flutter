import 'package:ecommerce/widgets/button.dart';
import 'package:flutter/material.dart';

import 'input_field.dart';

class InputWrapper extends StatelessWidget {
  const InputWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          SizedBox( height: 40,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: InputField(),
          ),

          SizedBox(
            height: 40,
          ),
          Text("Forger Password",style: TextStyle(
            color: Colors.red, fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 40,
          ),
          Button()
        ],
        
      ),
    );
  }
}
