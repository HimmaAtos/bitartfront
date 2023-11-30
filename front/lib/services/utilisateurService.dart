import 'dart:convert';
import 'dart:html';
//import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front/models/UtilisateurModel.dart';
//import 'package:localstorage/localstorage.dart';

import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

import '../constante.dart';

// import 'package:localstorage/localstorage.dart';

//final my_app = new LocalStorage('my');

class UtilisateurState {
  LocalStorage my_storage = new LocalStorage("space");
  Future<bool> register(UtilisateurModel user, BuildContext context) async {
    try {
      String urlRegister = '${backend}/register';
      http.Response response = await http.post(
        Uri.parse(urlRegister),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "password": user.password,
          "first_name": user.firstName,
          "last_name": user.lastName,
          "email": user.email,
          "cni": "0000",
          "addresse": "0000",
          "profil": "0000",
          "name": "0000"
        }),
      );
      var data = json.decode(response.body);
      print(data);
      print(data["user"]);

      // ici la requete s'est bien passée
      await my_storage.ready;
      my_storage.setItem("response_register", 200);

      return true;
    } catch (e) {
      print("error register");
      print("details de l'erreur");
      print(e);
      await my_storage.ready;
      my_storage.setItem("response_register", 0);

      return false;
    }
  }

  Future<bool> login(String a, b, BuildContext context) async {
    try {
      String urlRegister = '${backend}/login';
      print(b);
      http.Response response = await http.post(
        Uri.parse(urlRegister),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "password": b,
          "email": a,
        }),
      );
      var data = json.decode(response.body) as Map;
      my_storage.setItem('user', response.body);
      if (response.statusCode == 200) {
        Navigator.of(context).pushNamed(
          "/home",
        );
        return true;
        //storage.setItem('success', 'yes');
      } else {
        return false;
      }

      /* if (data.containsKey('token')) {
        // storage.setItem('token', data['token']);
 
        // initParam();
        print(data['token']);
        //return false;
      }
      */
    } catch (e) {
      return false;
    }
  }

  Future<bool> loginn(UtilisateurModel user, BuildContext context) async {
    try {
      String urlRegister = '${backend}/login';
      http.Response response = await http.post(
        Uri.parse(urlRegister),
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode({
          "password": user.password,
          "email": user.email,
        }),
      );
      var data = json.decode(response.body) as Map;
      print(response.statusCode);
      print(data);
      //print(data);
      print(data["user"]);
      await my_storage.ready;
      my_storage.setItem("response_login", 200);
      my_storage.setItem("user", data["user"]);

      if (response.statusCode == 200) {
        Navigator.of(context).pushNamed("/home");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
                "Bienvenue cher utilisateur ${data["user"]["first_name"]}")));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Informations invalides !")));
      }

      return true;
    } catch (e) {
      print("error loginnow");
      print("details de l'erreur");
      print(e);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Informations invalides !")));

      return false;
    }
  }
}
