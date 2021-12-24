import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Center(
            child: Text("Login",style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
            )
            ,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text("Fell Free while Shopping",style: TextStyle(
              color: Colors.white,fontSize: 18
            ),),
          )
        ],
      ),
    );
  }
}
