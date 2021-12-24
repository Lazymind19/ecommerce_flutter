import 'package:ecommerce/widgets/header.dart';
import 'package:ecommerce/widgets/input_wrapper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, colors: [

              Colors.cyan.shade500,
              Colors.cyan.shade400,


            Colors.white,

          ]
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Header(),

            Expanded(
                child:
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                )
              ),
              child: InputWrapper(

              ),
            ))

          ],
        ),
      ),
    );
  }
}
