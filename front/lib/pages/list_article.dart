// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:front/pages/widgets.dart';

class BitArtListArticle extends StatefulWidget {
  const BitArtListArticle({Key? key}) : super(key: key);

  @override
  State<BitArtListArticle> createState() => _BitArtListArticleState();
}

class _BitArtListArticleState extends State<BitArtListArticle> {
  final List<String> articles = [
    "Article 1",
    "Article 2",
    "Article 3",
    // Add more articles here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xDB2C736C),
        title: Text('Market Place'),
      ),
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
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(articles[index]),
            leading: CircleAvatar(
              // Placeholder for article image
              backgroundColor: Color(0xDB2C736C),
              child: Text('Image'),
            ),
            onTap: () {
            },
          );
        },
      ),
    );
  }
}
