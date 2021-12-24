import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/widgets/HorizontalList.dart';
import 'package:ecommerce/widgets/drawer_widget.dart';
import 'package:ecommerce/widgets/recent_products.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    )
  );
}

