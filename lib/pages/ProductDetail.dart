import 'package:ecommerce/widgets/recent_products.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class ProductDetail extends StatefulWidget {
  late final product_detail_name;
  late final product_picture;
  late final product_new_price;
  late final product_old_price;

  ProductDetail({
    this.product_old_price,
    this.product_picture,
    this.product_detail_name,
    this.product_new_price,

});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
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

      body: ListView(
        children :[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_picture),


              ),
              footer: Container(
                child: ListTile(
                  leading: Text(widget.product_detail_name),
                  title: Row(
                    children: [
                      Expanded(child: Text("\$${widget.product_old_price}",style: TextStyle(
                        decoration: TextDecoration.lineThrough
                      ),)),
                      Expanded(
                        child: Text("\$${widget.product_new_price}"),
                      )
                    ],
                  ),
                ),
              ),

            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    children: [
                      // ===== Size Button  =========
                      Expanded(
                       child: Text("Size")
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),

                      // ======= Color Button =========
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down),),

                      //======== QTY Button ====

                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              

            ],
          ),

          //======= Buy Now Row ====
          Row(
            children: [
              Expanded(child: MaterialButton(
                textColor: Colors.white,
                elevation: 5,
                color: Colors.red,
                onPressed: (){
                  showDialog(context: context, builder:(context)
                  {
                   return AlertDialog(
                      title: Text("Successfully"),
                      content: Text("Item Bought"),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop(context);
                          },
                          child: Text("Ok"),
                        )
                      ],
                    );
                  }
                  );
                },
                child: Text("Buy Now"),

              ),

              ),
              IconButton(icon: Icon(Icons.shopping_cart,color: Colors.red,), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));
              },),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: () {  },)
            ],
          ),

          Divider(
            color: Colors.red,
          ),

          ListTile(
            title: Text("Product Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(color: Colors.black),),
          ),
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products",style: TextStyle(
              fontWeight: FontWeight.bold,

            ),),
          ),
          Container(
            height: 200.0,
              child: RecentProducts())
        ],
      ),
    );
  }
}
