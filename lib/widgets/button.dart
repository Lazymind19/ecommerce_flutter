import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10)
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomePage()));

        },
        child: Center(

          child: Text("Login",style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
