import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/widgets/HorizontalList.dart';
import 'package:ecommerce/widgets/drawer_widget.dart';
import 'package:ecommerce/widgets/recent_products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

final List<String> imageList = [
  'images/iphn.jpg',
  'images/iphn.jpg',
  'images/iphn.jpg',
  'images/iphn.jpg',
];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Shopping App'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));
          }, icon: Icon(Icons.shopping_cart, color: Colors.white,),)
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        shrinkWrap: true,

        children: [
          Container(
            child: CarouselSlider(
              items: imageList.map((e) => Container(
                child: Center(
                  child: Image.asset(e,
                  fit: BoxFit.cover,
                  ),
                ),

              )).toList(),
              options: CarouselOptions(
                autoPlay: true,

                aspectRatio: 1.0,
                enlargeCenterPage: true
              ),

              

            ),

            height: 200.0,

          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text("Catagories",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Recent Products", style: TextStyle(
                fontWeight: FontWeight.bold
            ),
            ),
          ),
          Container(
              height: 300.0,
              child: RecentProducts())


        ],
      ),
    );
  }
}
