// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable

//import 'dart:html';
//import 'dart:math';

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:front/models/UtilisateurModel.dart';
//import 'package:front/pages/Widgets.dart';
import 'package:front/pages/widgets.dart';
//import 'package:front/my_flutter_app_icons.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import './../services/utilisateurService.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Map infosNewUser = {};

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  final validatorFirstName = GlobalKey<FormState>();

  String endPoint = "/http:127.0.0.1:8000/register";

  void sendInformationsForCreateAccounteToServer(
      Map infosUser, String endPoint) {
    var responseRequest = http.post(Uri.parse(endPoint), body: infosUser);
    //print(responseRequest.toString());
    //log(12);
  }

  LocalStorage my_storage = new LocalStorage("space");

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
              //padding: EdgeInsets.symmetric(vertical = 12),
              child: const Center(
                child: Image(
                  image: AssetImage("images/logo-small.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(top: 30),
                          child: const Text(
                            "CREER UN COMPTE",
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
                              padding: EdgeInsets.only(top: 30, left: 30),
                              child: SizedBox(
                                  width: 300,
                                  height: 50,
                                  child: InputField(
                                    content: firstNameController,
                                    hiddeContent: false,
                                    isfilled: true,
                                    placeHolder: "Prénom",
                                    backgroundColor: Colors.grey[200],
                                  )),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                //width: 10,
                                padding: EdgeInsets.symmetric(vertical: 15),
                                margin: EdgeInsets.only(right: 30),
                                child: Center(
                                  child: Icon(
                                    Icons.account_circle,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                    //border : Border.all(width : 1, color : Colors.black),
                                    color: Color(0xDB2C736C),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5))),
                              ))
                        ],
                      ),
                      Form(
                          child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(top: 30, left: 30),
                                  child: SizedBox(
                                      width: 300,
                                      height: 50,
                                      child: InputField(
                                        content: lastNameController,
                                        hiddeContent: false,
                                        isfilled: true,
                                        placeHolder: "Nom",
                                        backgroundColor: Colors.grey[200],
                                      )),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    margin: EdgeInsets.only(right: 30),
                                    child: Center(
                                      child: Icon(
                                        Icons.account_circle,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                        //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                  ))
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
                                      height: 50,
                                      child: InputField(
                                        content: emailController,
                                        hiddeContent: false,
                                        isfilled: true,
                                        placeHolder: "Email",
                                        backgroundColor: Colors.grey[200],
                                      )),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    margin: EdgeInsets.only(right: 30),
                                    child: Center(
                                      child: Icon(
                                        Icons.mail,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                        //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                  ))
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
                                      height: 50,
                                      child: InputField(
                                        content: phoneController,
                                        hiddeContent: false,
                                        isfilled: true,
                                        placeHolder: "Numéro",
                                        backgroundColor: Colors.grey[200],
                                      )),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    margin: EdgeInsets.only(right: 30),
                                    child: Center(
                                      child: Icon(
                                        Icons.phone,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                        //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                  ))
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
                                      height: 50,
                                      child: InputField(
                                        content: passwordController,
                                        hiddeContent: true,
                                        isfilled: true,
                                        placeHolder: "Mot de passe",
                                        backgroundColor: Colors.grey[200],
                                      )),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    //width: 10,
                                    //padding: EdgeInsets.only(
                                    //  top: 10, right: 2, bottom: 10),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    margin: EdgeInsets.only(right: 30),
                                    child: Center(
                                      child: Icon(
                                        Icons.lock,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                        //border : Border.all(width : 1, color : Colors.black),
                                        color: Color(0xDB2C736C),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                  ))
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
                                        child: Icon(
                                          Icons.check,
                                          size: 14,
                                          color: Color(0xDB2C736C),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Acceptez les termes du contrat d'usage",
                                      style: TextStyle(
                                        letterSpacing: 1,
                                        color: Color(0xDB2C736C),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              /*Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                          SizedBox(height: 20), // Added spacing
                          Container(
                            width: 200,
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [Colors.yellow, Color(0xDB2C736C)],
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                print("in process");
                                // infosNewUser["first_name"] =
                                //   firstNameController.text;

                                //infosNewUser["last_name"] =
                                //   lastNameController.text;
                                //infosNewUser["email"] = emailController.text;
                                //infosNewUser["phone"] = phoneController.text;
                                //infosNewUser["password"] =
                                //    passwordController.text;
                                // une fois les informations recoltés on envoi cela au backend

                                UtilisateurModel user = UtilisateurModel(
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                );

                                // appel de la fonction register pour envoyer les resquetes
                                UtilisateurState().register(user, context);

                                if (my_storage.getItem("response_register") ==
                                    200) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text("Inscription reussie")));
                                  Navigator.of(context).pushNamed(
                                    "/LoginPage",
                                  );
                                } else {
                                  print(
                                      my_storage.getItem("response_register"));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "L'inscription n'est pas passée")));
                                }

                                /* if (window.localStorage["status"] == "succes") {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text("Inscription reussie")));
                                  Navigator.of(context).pushNamed(
                                    "/LoginPage",
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "L'inscription n'a pas aboutie")));
                                }*/
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 10),
                              ),
                              child: Text(
                                "SIGN UP",
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Or",
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
                            children: [
                              Text(
                                "Vous avez deja un compte? ",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    "/LoginPage",
                                  );
                                },
                                child: Text(
                                  "Se connecter",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                        ],
                      ))
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
