// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:front/pages/widgets.dart';

class MySpace extends StatefulWidget {
  const MySpace({super.key});

  @override
  State<MySpace> createState() => _MySpaceState();
}

class _MySpaceState extends State<MySpace> {
  final List elements = [
    {
      "pathImage": "images/art3_ww.png",
      "name": "Dessin sur visage",
      "evaluation": "20",
      "miniText":
          "Ce dessin donne l'allusion de peinture sur une femme, est ce de la peinture ou pavenez vous à deceller ce qu'il est reeelement ",
      "price": "200"
    },
    {
      "pathImage": "images/art4_ww.png",
      "name": "Femme Forte",
      "evaluation": "20",
      "miniText":
          "Cette femme , bébé au dos pile le mortier afin de moudre le contenu, Surement elle est entrain de preparer un repas  pour la famille",
      "price": "200"
    },
    {
      "pathImage": "images/art5_ww.png",
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        leading: IconButton(
<<<<<<< HEAD
          icon: Icon(Icons.arrow_back, color: Color(0xFFF6F9FF)),
=======
          icon: Icon(Icons.arrow_back, color: Colors.black),
>>>>>>> my space and other in ...
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('MON ESPACE'),
        backgroundColor: Color(0xFF2C736C),
      ),
      body: Container(
        //margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //TopBarMySpace(context),
              FieldSearch(),

              Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: elements.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return mySpaceElement(
                        elements[index]["pathImage"],
                        elements[index]["name"],
                        elements[index]["price"],
                        elements[index]["miniText"],
                        elements[index]["evaluation"],
                      );
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
            ],
          ),
        ),
      ),
<<<<<<< HEAD
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/add");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFFE3B71D),
      ),
    );
  }
}
=======
    );
  }
}
>>>>>>> my space and other in ...
