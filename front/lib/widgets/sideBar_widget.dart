import 'package:flutter/material.dart';

Widget sideBard(BuildContext context,) {
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
                        'Awa Faye',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Acheteur',
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
            'Commandes',
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
          onTap: () {
                              // Add navigation logic to the signup screen
                              Navigator.of(context).pushNamed(
                                "/myspace",
                              );
                            },
          title: Text(
            'Mon Espace',
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
            'Devenir Vendeur',
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
            'Service clients',
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
            'Paramètres',
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
            'Règle d\'usage',
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
            'Partager avec vos amis',
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
        SizedBox(height: 140),
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
            'Déconnexion',
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
