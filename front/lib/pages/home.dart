// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:front/models/ArticleModel.dart';
import 'package:front/pages/widgets.dart';
import 'package:front/services/articleService.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _init = true;
  bool _isLoding = false;
  final List elements = [
    {
      "pathImage": "images/art4.png",
      "name": "De l'art",
      "evaluation": "20",
      "miniText": "du mini textt encore",
      "price": "400\$"
    },
    {
      "pathImage": "images/art2.png",
      "name": "Another",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "400\$"
    },
    {
      "pathImage": "images/art5.png",
      "name": "Encore De l'arttt",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/art4.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/art2.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/oeuvre.jpg",
      "name": "Pere Modou",
      "evaluation": "20",
      "miniText":
          "Pere Modou quitte son village lointain pour aller rendr visite a son voisin",
      "price": "800\$"
    },
    {
      "pathImage": "images/art4.png",
      "name": "Encore De l'art",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/art2.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {},
  ];

  @override
  void didChangeDependencies() async {
    if (_init) {
      _isLoding =
          await Provider.of<ArticleState>(context, listen: false).getArticles();
      setState(() {});
    }
    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    dynamic _article = Provider.of<ArticleState>(context).arts;
    return Scaffold(
      backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Market Place'),
        backgroundColor: Color(0xFF2C736C),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 7),
              child: Icon(Icons.shopping_cart))
        ],
      ),
      drawer: sideBard(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            //TitleBar(),
            FieldSearch(),
            /*CardE(
                pathImage: "images/logo.png",
                name: "Summer Holiday",
                evaluation: "12",
                miniText: "Ceci est une palette de couleur",
                price: "200"),*/

            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _article.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return customRow(_article[index], _article[index]);
                    /*Row(children: [
                      CardE(
                          pathImage: elements[index]["pathImage"],
                          name: elements[index]["name"],
                          evaluation: elements[index]["evaluation"],
                          miniText: elements[index]["miniText"],
                          price: elements[index]["price"]),
                      CardE(
                          pathImage: elements[index + 1]["pathImage"],
                          name: elements[index + 1]["name"],
                          evaluation: elements[index + 1]["evaluation"],
                          miniText: elements[index + 1]["miniText"],
                          price: elements[index + 1]["price"]),
                    ]);*/
                  }),
            )
          ]),
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
