import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white,)
        ],


      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("Total"),
                subtitle: Text("\$250"),
              ),
            ),
            Expanded(

                child: MaterialButton(
                  onPressed: (){
                    Navigator.of(context).pop(context);
                  },
                    color: Colors.red,
                    elevation: 5,
                    child: Text("Confirm Order",style: TextStyle(
                      color: Colors.white
                    ),)))
          ],
        ),
      ),
    );
  }
}
