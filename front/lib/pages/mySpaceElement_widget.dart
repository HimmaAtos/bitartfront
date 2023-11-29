import 'package:flutter/material.dart';

Widget mySpaceElement(
    String pathImage, String nom, String prix, String desc, String evaluation) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Column(
      children: [
        Container(
            child: Image(
          image: AssetImage(pathImage),
          //width: double.,
        )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nom,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text("B ${prix}")
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 5,
          ),
          child: Text(desc),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 15,
                  ),
                  Text(evaluation),
                ],
              ),
            ),
            Container(
              child: Row(children: [
                Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0x3F000000),
                    ),
                    child: Icon(
                      Icons.list,
                      color: Color(0xFF2C736C),
                      size: 25,
                    )),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0x3F000000),
                  ),
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(5),
                  child: Icon(
                    Icons.edit,
                    color: Color(0xFF2C736C),
                    size: 25,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0x3F000000),
                  ),
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(5),
                  child: Icon(
                    Icons.delete,
                    color: Color(0xFF2C736C),
                    size: 25,
                  ),
                ),
              ]),
            )
          ]),
        )
      ],
    ),
  );
}
