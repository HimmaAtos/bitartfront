// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Color(0xDB2C736C),
      child: ListTile(
        //selected: true,
        tileColor: Color(0xDB2C736C),
        /*leading: Icon(
          Icons.add_task,
          color: Colors.white,
        ),*/
        title: Center(
            child: Text(
          "MARKET PLACEE",
          style: TextStyle(color: Colors.white),
        )),
        trailing: Icon(
          Icons.add_shopping_cart,
          color: Colors.orange,
        ),
      ),
    );

    /*Row(
      children: [
        Container(
          child: Icon(Icons.add_task),
        ),
        Container(
          child: Center(
            child: Text(
              "MARKET PLACE"
            )
            ),
        )
      ],
      
      )*/
  }
}

class FieldSearch extends StatelessWidget {
  const FieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 130, vertical: 10),
        child: Center(
          child: SizedBox(
            height: 35,
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Search",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
        ));
  }
}

class CardE extends StatelessWidget {
  String pathImage, name, evaluation, miniText, price;

  CardE(
      {required this.pathImage,
      required this.name,
      required this.evaluation,
      required this.miniText,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, left: 18),
      width: 180,
      child: Card(
        child: Column(children: [
          Container(
              padding: EdgeInsets.only(bottom: 2),
              child: Image.asset(
                pathImage,
                height: 150,
                width: 200,
              )),
          Container(
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text(name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 15,
                ),
                Text(
                  "(${evaluation})",
                  style: TextStyle(fontSize: 12, color: Colors.green[500]),
                )
              ])),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Text(
              miniText,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: 50,
                  height: 30,
                  child: Center(
                      child:
                          Icon(Icons.add_shopping_cart, color: Colors.white)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

/*
class CustomizedRow extends StatelessWidget {
  CustomizedRow(myListe);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        CardE(
            pathImage: pathImage,
            name: name,
            evaluation: evaluation,
            miniText: miniText,
            price: price),
        CardE(
            pathImage: pathImage,
            name: name,
            evaluation: evaluation,
            miniText: miniText,
            price: price),
      ]),
    );
  }
}
*/

Widget customRow(Map infos1, Map infos2) {
  return Row(
    children: [
      CardE(
          pathImage: infos1["pathImage"],
          name: infos1["name"],
          evaluation: infos1["evaluation"],
          miniText: infos1["miniText"],
          price: infos1["price"]),
      CardE(
          pathImage: infos2["pathImage"],
          name: infos2["name"],
          evaluation: infos2["evaluation"],
          miniText: infos2["miniText"],
          price: infos2["price"]),
    ],
  );
}

Widget sideBard() {

  return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'MENU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                 SizedBox(height: 20),
                 Row(
                  children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/ziz.jpg"), 
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abdou Aziz KANE', 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Artiste', 
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
                ),
               ],
              ),
             ],
            ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 4, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
          // Profile ListTile
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.account_circle,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Profile',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
// Orders ListTile
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.shopping_bag,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Orders',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
// My Space ListTile
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.dashboard_customize_outlined,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'My Space',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 1, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
          ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.person_pin,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
      'Become a seller',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.call,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Customer service',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 1, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
            ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.settings_sharp,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
     'Settings',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.privacy_tip,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Terms & Privacy',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.share,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
      'Invite your friends join BitArt',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 1, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
            SizedBox(height: 90),
            // Log Out ListTile
      ListTile(
    leading: Container(
    padding: EdgeInsets.all(6), // Padding for the circular square
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200], // Transparent green color
    ),
    child: Icon(
      Icons.logout,
      color: Color(0xDB2C736C), // Icon color (green)
      size: 24, // Icon size
    ),
  ),
  title: Text(
    'Log Out',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 16,
    ),
  ),
  onTap: () {
    // Add logout functionality here
  },
),

          ],
        ),
      );

}
/*
drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'MENU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                 SizedBox(height: 20),
                 Row(
                  children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/ziz.jpg"), 
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abdou Aziz KANE', 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Artiste', 
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
                ),
               ],
              ),
             ],
            ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 4, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
          // Profile ListTile
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.account_circle,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Profile',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
// Orders ListTile
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.shopping_bag,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Orders',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
// My Space ListTile
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.dashboard_customize_outlined,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'My Space',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 1, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
          ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.person_pin,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
      'Become a seller',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.call,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Customer service',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 1, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
            ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.settings_sharp,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
     'Settings',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.privacy_tip,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
    'Terms & Privacy',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
ListTile(
  leading: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200],
    ),
    child: Icon(
      Icons.share,
      color: Color(0xDB2C736C),
      size: 24,
    ),
  ),
  title: Text(
      'Invite your friends join BitArt',
    style: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
            child: Container(
            height: 1, // Adjust the height of the yellow line
            width: 100, // Set a specific width for the yellow line
            color: Colors.amber, // Change the color to yellow
            ),
            ),
            SizedBox(height: 90),
            // Log Out ListTile
      ListTile(
    leading: Container(
    padding: EdgeInsets.all(6), // Padding for the circular square
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[200], // Transparent green color
    ),
    child: Icon(
      Icons.logout,
      color: Color(0xDB2C736C), // Icon color (green)
      size: 24, // Icon size
    ),
  ),
  title: Text(
    'Log Out',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 16,
    ),
  ),
  onTap: () {
    // Add logout functionality here
  },
),

          ],
        ),
      ),

*/
