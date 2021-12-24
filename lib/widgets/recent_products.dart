import 'package:ecommerce/pages/ProductDetail.dart';
import 'package:flutter/material.dart';

class RecentProducts extends StatefulWidget {
  const RecentProducts({Key? key}) : super(key: key);


  @override
  State<RecentProducts> createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  var product_list = [
    {
      "name": "Jacket",
      "picture":"images/iphn.jpg",
      "old_price":12000,
      "price":1000
    }, {
      "name": "Shirt",
      "picture":"images/iphn.jpg",
      "old_price":1200,
      "price":100
    }, {
      "name": "Cap",
      "picture":"images/iphn.jpg",
      "old_price":120,
      "price":10
    }, {
      "name": "Jacket",
      "picture":"images/iphn.jpg",
      "old_price":12000,
      "price":1000
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          product_name: product_list[index]['name'],
          product_old_price: product_list[index]['old_price'],
          product_picture: product_list[index]['picture'],
          product_price: product_list[index]['price'],
        );
        });
  }
}
class SingleProduct extends StatelessWidget {
   final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  SingleProduct({
     this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price
});


  @override
  Widget build(BuildContext context) {
    return Card(

      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetail(
                product_picture: product_picture,
                product_old_price: product_old_price,
                product_detail_name: product_name,
                product_new_price: product_price,
              )

            )),
            child: GridTile(
              footer: Container(

                color: Colors.white70,
                child: ListTile(
                  leading: Text(product_name,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  title: Text('\$$product_price',style: TextStyle(color: Colors.red),),
                  subtitle: Text('\$$product_old_price',style: TextStyle(decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold),),
                ),
              ),
              child: Image.asset(product_picture),

            ),
          ),
        ),
      ),
    );
  }
}
