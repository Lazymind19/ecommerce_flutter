import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(

        scrollDirection: Axis.horizontal,
        children: [
  Catagory(
    image_location: 'images/iphn.jpg',
    image_caption: "Jacket",
  ),Catagory(
    image_location: 'images/iphn.jpg',
    image_caption: "Shirt",
  ),Catagory(
    image_location: 'images/iphn.jpg',
    image_caption: "Pant",
  ),Catagory(
    image_location: 'images/iphn.jpg',
    image_caption: "Trouser",
  ),Catagory(
    image_location: 'images/iphn.jpg',
    image_caption: "Gloves",
  ),


        ],
      ),
    );
  }
}

class Catagory extends StatelessWidget {
   late final String image_location;
  late final String image_caption;

  Catagory({required this.image_caption,required this.image_location});



   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location),
            subtitle: Text(image_caption),
          ),
        ),
      ),
    );
  }
}

