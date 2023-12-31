// ignore_for_file: unused_import, prefer_const_declarations, avoid_print, file_names

import 'dart:convert';
//import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:front/models/ArticleModel.dart';
import 'package:front/models/UtilisateurModel.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:provider/provider.dart' as pd;

// import 'package:localstorage/localstorage.dart';
/*
class ArticleState with ChangeNotifier {
  List<ArticleModel> _articles = [];
  LocalStorage storage = LocalStorage("usertoken");

  Future<bool> getArticles() async {
    try {
      var token = storage.getItem('token');
      String url = 'http://10.0.2.2:8000/articles/';
      http.Response response = await http.get(Uri.parse(url));
      var data = json.decode(response.body) as List;
      List<ArticleModel> temp = [];
      data.forEach((element) {
        ArticleModel post = ArticleModel.fromJson(element);
        temp.add(post);
      });
      _articles = temp;
      print(_articles);

      notifyListeners();
      // getNotificationData();
      return true;
    } catch (e) {
      print("error getPostData");
      print(e);
      return false;
    }
  }

  List<ArticleModel> get arts {
    if (_articles != null) {
      return [..._articles];
    }
    return [];
  }
}
*/

Future<void> addArticle(ArticleModel article) async {
  final String apiUrl = 'http://'; 

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: {
      'Content-Type': 'application/json',
    },
     body: json.encode({
          "image": article.pathImage,
          "name": article.name,
          "tools": article.tools,
          "support": article.support,
          "description": article.description,
          "prix": "0000", 
          "evaluation": "0000",

        }),
  );
  var data = json.decode(response.body);
      print(data);

  if (response.statusCode == 200) {
    
    print('Article a été ajouté avec success');
  } else {
    
    print(' article non ajouter');
  }
  
}




