// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unused_import, avoid_print, avoid_unnecessary_containers

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:front/models/UtilisateurModel.dart';
import 'package:front/services/utilisateurService.dart';

import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

class BitArtLoginPage extends StatefulWidget {
  const BitArtLoginPage({super.key});

  @override
  State<BitArtLoginPage> createState() => _BitArtLoginPageState();
}

class _BitArtLoginPageState extends State<BitArtLoginPage> {
  Map infosUser = {};
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

/*
  void sendInformationsForLoginToServer(Map infosUser, String endPoint) {
    var responseRequest = http.post(Uri.parse(endPoint), body: infosUser);
    print(responseRequest.toString());
    //log(12);
  }*/

  LocalStorage my_storage = new LocalStorage("space");

  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xDB2C736C),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Center(
                  child: Image(
                    image: AssetImage("images/logo-small.png"),
                    height: 200,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Container(
                  //margin: EdgeInsets.only(bottom: 0),
                  //height: ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        //padding: EdgeInsets.only(top: 1, bottom: 1),
                        child: Text(
                          "SE CONNECTER",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              padding: EdgeInsets.only(top: 30, left: 30),
                              child: SizedBox(
                                width: 300,
                                child: TextField(
                                  controller: emailController,
                                  obscureText: false,
                                  style: TextStyle(
                                      color: Colors.black), // Set text color
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[
                                        200], // Set light gray background color
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide.none, // Remove border
                                      borderRadius: BorderRadius.circular(
                                          5), // Add border radius
                                    ),
                                    hintText: 'E-mail',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 15, right: 2, bottom: 15),
                              margin: EdgeInsets.only(right: 17),
                              child: Icon(Icons.email,
                                  size: 30, color: Colors.white),
                              decoration: BoxDecoration(
                                color: Color(0xDB2C736C),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              padding: EdgeInsets.only(top: 30, left: 30),
                              child: SizedBox(
                                width: 300,
                                child: TextField(
                                  controller: passwordController,
                                  obscureText: true,
                                  style: TextStyle(
                                      color: Colors.black), // Set text color
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[
                                        200], // Set light gray background color
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide.none, // Remove border
                                      borderRadius: BorderRadius.circular(
                                          5), // Add border radius
                                    ),
                                    hintText: 'Mot de passe',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 15, right: 2, bottom: 15),
                              margin: EdgeInsets.only(right: 17),
                              child: Icon(Icons.lock,
                                  size: 30, color: Colors.white),
                              decoration: BoxDecoration(
                                color: Color(0xDB2C736C),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // Added spacing
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xDB2C736C), width: 2),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: rememberMe
                                        ? Icon(
                                            Icons.check,
                                            size: 14,
                                            color: Color(0xDB2C736C),
                                          )
                                        : null,
                                  ),
                                ),
                                Text(
                                  "Se souvenir de moi",
                                  style: TextStyle(
                                    color: Color(0xDB2C736C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: Text(
                              "Mot de passe oublié?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // Added spacing
                      Container(
                        //margin : EdgeInsets.only(bottom: 20),
                        width: 200,
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [Colors.yellow, Color(0xDB2C736C)],
                          ),
                        ),
                        child: TextButton(
                          onPressed: () async {
                            UtilisateurModel user = new UtilisateurModel(
                                email: emailController.text,
                                password: passwordController.text);

                            UtilisateurState()
                                .login(emailController.text,
                                    passwordController.text, context)
                                .then((value) => {
                                      if (value)
                                        {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content: Text('Bienvenue')))
                                        }
                                      else
                                        {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content: Text(
                                                      'email ou mot de passe'))),
                                        }
                                    });

                            //print(UtilisateurState().data)
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          child: Text(
                            "CONNEXION",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Added spacing
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 90),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Ou",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20), // Added spacing
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 80),
                            child: Text(
                              "Vous n'avez pas de compte ? ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Add navigation logic to the signup screen
                              Navigator.of(context).pushNamed(
                                "/register",
                              );
                            },
                            child: Text(
                              "S'inscrire",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
