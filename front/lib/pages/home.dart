// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:front/models/ArticleModel.dart';
import 'package:front/pages/card_article_widget.dart';
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
      "pathImage": "images/art1.png",
      "name": "Palette de couleur piquant",
      "evaluation": "20",
      "miniText": "Palete de couleurs Offrant une possibilité",
      "price": "200"
    },
    {
      "pathImage": "images/art_w.png",
      "name": "Femme Forte",
      "evaluation": "20",
      "miniText": "Femme forte pilant",
      "price": "200"
    },
    {
      "pathImage": "images/art2.png",
      "name": "Encore De l'art",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "300"
    },
    {
      "pathImage": "images/art3.png",
      "name": "Oeil du Continent",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800"
    },
  ];
  final List elements2 = [
    {
      "pathImage": "images/art4.png",
      "name": "De l'art",
      "evaluation": "20",
      "miniText": "du mini textt encore",
      "price": "250"
    },
    {
      "pathImage": "images/art5.png",
      "name": "Another",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "420"
    },
    {
      "pathImage": "images/bit.png",
      "name": "Encore De l'arttt",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800"
    },
    {
      "pathImage": "images/bitArt-logo.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "850"
    },
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
    List<ArticleModel> _articles = Provider.of<ArticleState>(context).arts;
    return Scaffold(
      backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text('MARKET PLACE'),
        backgroundColor: Color(0xFF2C736C),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 7),
              child: Icon(Icons.shopping_cart))
        ],
      ),
      drawer: sideBard(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            //TitleBar(),
            FieldSearch(),
            /*CardE(
                pathImage: "images/logo.png",
                name: "Summer Holiday",
                evaluation: "12",
                miniText: "Ceci est une palette de couleur",
                price: "200"),*/

            Container(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.65,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  shrinkWrap: true,
                  itemCount: _articles.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ArticleCard(context, _articles[index]);
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
            // Container(
            //     child: GridView.builder(
            //         gridDelegate:
            //             const SliverGridDelegateWithMaxCrossAxisExtent(
            //                 maxCrossAxisExtent: 200,
            //                 childAspectRatio: 3 / 2,
            //                 crossAxisSpacing: 20,
            //                 mainAxisSpacing: 20),
            //         itemCount: _articles.length,
            //         itemBuilder: (BuildContext ctx, index) {
            //           return Container(
            //             alignment: Alignment.center,
            //             decoration: BoxDecoration(
            //                 color: Colors.amber,
            //                 borderRadius: BorderRadius.circular(15)),
            //             child: Text(_articles[index].title ?? "dljkd"),
            //           );
            //         }))
          ]),
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
