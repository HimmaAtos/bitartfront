import 'dart:convert';
import 'dart:html';
//import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:front/models/UtilisateurModel.dart';
//import 'package:localstorage/localstorage.dart';

import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

// import 'package:localstorage/localstorage.dart';

//final my_app = new LocalStorage('my');

class UtilisateurState {
  Future<bool> register(UtilisateurModel user, BuildContext context) async {
    LocalStorage my_storage = new LocalStorage("user");
    try {
      String urlRegister = 'http://10.0.2.2:8000/register';
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
      /*await my_storage.ready;
      my_storage.setItem("key", value)*/
      if (response.statusCode == 200) {
        //window.localStorage['status'] = "succes";

        //storage.setItem('success', 'yes');
      }
      print(data);

      /*  
      let's hundle the response
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        "Informations valides ${infosNewUser["first_name"]}")));
      */
      /* if (data.containsKey('token')) {
        // storage.setItem('token', data['token']);

        // initParam();
        print(data['token']);
        //return false;
      }
      */
      return data;
    } catch (e) {
      print("error loginnow");
      print("details de l'erreur");
      print(e);

      return true;
    }
  }

  Future<bool> login(UtilisateurModel user, BuildContext context) async {
    try {
      String urlRegister = 'http://10.0.2.2:8000/login';
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

      if (response.statusCode == 200) {
        //window.localStorage['status'] = "succes";

        //storage.setItem('success', 'yes');
      }

      /* if (data.containsKey('token')) {
        // storage.setItem('token', data['token']);

        // initParam();
        print(data['token']);
        //return false;
      }
      */
      return true;
    } catch (e) {
      print("error loginnow");
      print("details de l'erreur");
      print(e);

      return true;
    }
  }
}
