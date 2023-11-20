// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class BitArtDetailArticle extends StatefulWidget {
  const BitArtDetailArticle({Key? key}) : super(key: key);

  @override
  State<BitArtDetailArticle> createState() => _BitArtDetailArticleState();
}

class _BitArtDetailArticleState extends State<BitArtDetailArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your AppBar-like section without AppBar
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 16, top: 40, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'DETAILS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.star,
                          size: 35,
                          color:  Colors.amber,
                        ),
                      ),
                      // IconButton for Price (Add functionality as needed)
                      IconButton(
                        icon: Icon(Icons.shopping_cart, color:  Colors.amber),
                        onPressed: () {
                          // Add functionality for price if needed
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Image
            Center(
              child: Container(
                width: 370,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                    image: AssetImage("images/oeuvre.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Price with Yellow Star
// Details: Title, Price, and Star
Padding(
  padding: EdgeInsets.symmetric(horizontal: 16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Titre:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' charette',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
             RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Dimensions:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' 1090x670',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8), 
              Text(
                    '\$400',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 9), // Adjust
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Text(
                    '(123)',
                    //style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
            ),
           ],
           ),
             SizedBox(height: 8),
             RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Support:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Canvas',
                    ),
                  ],
                ),
              ),
             SizedBox(height: 8),
             RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Tools:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Brush',
                    ),
                  ],
                ),
              ),
          ],
          ),
           ),
            SizedBox(height: 20),
            // Description
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Description:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Pére Modou va rendre visite à son cousin avec sa famille au village voisin ',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 140),
            // Add to Cart Button
            Center(
             child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Add functionality for adding to cart
                },
                style: ElevatedButton.styleFrom(
                   primary: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                label: Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ),
            SizedBox(height: 20),
        Container(
  color: Color(0xDB2C736C),
  padding: EdgeInsets.symmetric(vertical: 16), // Increased padding for additional space
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.account_balance_wallet, color: Colors.white, size: 28),
              SizedBox(height: 4),
              Text(
                'Wallet',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.message, color: Colors.white, size: 28),
              SizedBox(height: 4),
              Text(
                'Message',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.home, color: Colors.white, size: 28),
              SizedBox(height: 4),
              Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.notifications, color: Colors.white, size: 28),
              SizedBox(height: 4),
              Text(
                'Notification',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.account_circle, color: Colors.white, size: 28),
              SizedBox(height: 4),
              Text(
                'Profile',
                style: TextStyle(color: Colors.white),
               ),
              ],
             ),
           ],
           ),
          ],
          ),
          ),
          ],
        ),
      ),
    );
  }
}
