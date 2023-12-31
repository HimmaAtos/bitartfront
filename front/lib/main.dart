//<<<<<<< HEAD
// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:front/pages/add_article_2.dart';
import 'package:front/pages/detail_article.dart';
import 'package:front/pages/home.dart';
import 'package:front/pages/myspace.dart';
//import 'package:front/my_flutter_app_icons.dart';
import 'package:front/pages/welcome.dart';
import 'package:front/pages/register.dart';
import 'package:front/pages/login_page.dart';
import 'package:front/pages/welcome2.dart';
import 'package:front/services/articleService.dart';
//import 'package:provider/provider.dart';
//import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(MaterialApp(
    routes: <String, WidgetBuilder>{
      "/LoginPage": (BuildContext context) => const BitArtLoginPage(),
      "/welcome": (BuildContext context) => const BitArtWelcome(),
      //"/welcome2": (BuildContext context) => const Welcome2(),
      "/register": (BuildContext context) => const Register(),
      "/home": (BuildContext context) => const Home(),
      "/details": (BuildContext context) => BitArtDetailArticle(),
      "/myspace": (BuildContext context) => MySpace(),
      "/add_article_2": (BuildContext context) => AddArticle2(),
      // "/secret": (BuildContext context) => const SecretPage(),
    },
    initialRoute: "/myspace",
//>>>>>>> 5851b641431b8f202c70be18ffa27eecaa17e125
    title: 'Bit\'Art',
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(
    //   primarySwatch: Colors.blue,
    // ),

    home: const BitArtWelcome(),
  ));
}
/*
class BitArtCreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xDB2C736C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: const Center(
                child: Image(
                  image: AssetImage("images/logo-small.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 30),
                        child: const Text(
                          "CREATE ACCOUNT",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: const SizedBox(
                              width: 300,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(5))),
                                  labelText: 'First namee',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              //width: 10,
                              padding: const EdgeInsets.only(top: 8, right: 2),
                              margin: const EdgeInsets.only(right: 17),
                              child: const Icon(
                                Icons.account_circle,
                                size: 51,
                                color: Colors.white,
                              ),
                              decoration: const BoxDecoration(
                                  //border : Border.all(width : 1, color : Colors.black),
                                  color: Color(0xDB2C736C),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                  )),
                            ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: const SizedBox(
                              width: 300,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(5))),
                                  labelText: 'First namee',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              //width: 10,
                              padding: const EdgeInsets.only(top: 8, right: 2),
                              margin: const EdgeInsets.only(right: 17),
                              child: const Icon(
                                Icons.account_circle,
                                size: 51,
                                color: Colors.white,
                              ),
                              decoration: const BoxDecoration(
                                  //border : Border.all(width : 1, color : Colors.black),
                                  color: Color(0xDB2C736C),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                  )),
                            ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            //padding : EdgeInsets.fromLTRB(40, 30, 0,0) ,
                            padding: const EdgeInsets.only(top: 30, left: 30),
                            child: const SizedBox(
                              width: 300,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(5))),
                                  labelText: 'First namee',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              //width: 10,
                              padding: const EdgeInsets.only(top: 8, right: 2),
                              margin: const EdgeInsets.only(right: 17),
                              child: const Icon(
                                Icons.account_circle,
                                size: 51,
                                color: Colors.white,
                              ),
                              decoration: const BoxDecoration(
                                  //border : Border.all(width : 1, color : Colors.black),
                                  color: Color(0xDB2C736C),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                  )),
                            ))
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
*/


//>>>>>>> 5851b641431b8f202c70be18ffa27eecaa17e125
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) => ArticleState(),
        child: MaterialApp(
          routes: <String, WidgetBuilder>{
            "/LoginPage": (BuildContext context) => const BitArtLoginPage(),
            "/welcome": (BuildContext context) => const BitArtWelcome(),
            //"/welcome2": (BuildContext context) => const Welcome2(),
            "/register": (BuildContext context) => const Register(),
            "/home": (BuildContext context) => const Home(),
            "/details": (BuildContext context) => BitArtDetailArticle(),
            // "/secret": (BuildContext context) => const SecretPage(),
          },
          initialRoute: "/welcome",
//>>>>>>> 5851b641431b8f202c70be18ffa27eecaa17e125
          title: 'Bit\'Art',
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
//<<<<<<< HEAD
          home: const BitArtWelcome(),
        ));
  }
}
*/
