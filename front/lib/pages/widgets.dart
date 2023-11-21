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
        margin: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
        child: Center(
          child: SizedBox(
            height: 35,
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Search",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide.none),
                  /*focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),*/

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
      //margin: EdgeInsets.only(bottom: 10, left: 10),
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(children: [
          Container(
              padding: EdgeInsets.only(bottom: 2),
              child: Image.asset(
                pathImage,
                height: 150,
                width: 250,
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                /*SizedBox(
                  width: 10,
                ),*/
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text(
                        "(${evaluation})",
                        style:
                            TextStyle(fontSize: 12, color: Colors.green[500]),
                      )
                    ],
                  ),
                )
              ])),
          Container(
            //margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              miniText,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    price,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  width: 65,
                  height: 30,
                  child: Center(
                      child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 20,
                  )),
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
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25),
    child: Row(
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
    ),
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
          padding:
              EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
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
          padding:
              EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
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
          padding:
              EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
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
          padding:
              EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding
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

// niou wadial bottom bar bi
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

Widget bottomBar() {
  return BottomAppBar(
    height: 50,
    color: Color(0xFF2C736C),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Icon(Icons.account_balance_wallet, color: Colors.white, size: 28),
        SizedBox(height: 4),
        Text(
          'Wallet',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.message, color: Colors.white, size: 28),
        SizedBox(height: 4),
        Text(
          'Message',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.home, color: Colors.white, size: 28),
        SizedBox(height: 4),
        Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.account_circle, color: Colors.white, size: 28),
        SizedBox(height: 4),
        Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ]),
    ),
  );
  /*Row(
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
  );*/
}

Widget buttonbGetStated(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 90, vertical: 25),
    child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
          "/home",
        );
      },
      child: Text(
        "GET STARTED",
        style: TextStyle(color: Color(0xFF2C736C), fontSize: 30),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            //side : BorderSide(color: Colors.black),
          )),
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
          padding: MaterialStateProperty.all(
              EdgeInsets.only(bottom: 15, top: 10, right: 20, left: 20))

          //textStyle: TextStyle(color: Colors.green)
          ),
    ),
  );
}
