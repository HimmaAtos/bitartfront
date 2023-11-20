// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:front/pages/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List elements = [
    {
      "pathImage": "images/logo.png",
      "name": "Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "400\$"
    },
    {
      "pathImage": "images/logo.png",
      "name": "Another",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "400\$"
    },
    {
      "pathImage": "images/logo.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/logo.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/logo.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/logo.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/logo.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {
      "pathImage": "images/logo.png",
      "name": "Encore Du genre",
      "evaluation": "20",
      "miniText": "du mini textt",
      "price": "800\$"
    },
    {},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xDB2C736C),
        title: Center(child: Text('Market Place')),
       
      ),
      drawer: sideBard(),
      body: SingleChildScrollView(
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
                itemCount: 7,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return customRow(elements[index], elements[index]);
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
    );
  }
}
