import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //This is the header of the drawer
          UserAccountsDrawerHeader(
            accountName: Text('My Account name'),
            accountEmail: Text("My Account Email"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),

          // This is the body of the drawer
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Order'),
              leading: Icon(Icons.bookmark_border),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("About us"),
              leading: Icon(Icons.help,color: Colors.blue,),
            ),
          )
        ],
      ),
    );
  }
}
