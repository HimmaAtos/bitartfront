import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Color(0xDB2C736C),
      child: ListTile(
        //selected: true,
        tileColor: Color(0xDB2C736C),
        leading: Icon(
          Icons.add_task,
          color: Colors.white,
        ),
        title: Center(
            child: Text(
          "MARKET PLACEE",
          style: TextStyle(color: Colors.white),
        )),
        trailing: Icon(
          Icons.add_shopping_cart,
          color: Colors.orange,
        ),
      ),
    );

    /*Row(
      children: [
        Container(
          child: Icon(Icons.add_task),
        ),
        Container(
          child: Center(
            child: Text(
              "MARKET PLACE"
            )
            ),
        )
      ],
      
      )*/
  }
}

class FieldSearch extends StatelessWidget {
  const FieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
        child: Center(
          child: SizedBox(
            height: 35,
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Search",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide.none),
                  /*focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),*/

                  prefixIcon: Icon(Icons.search)),
            ),
          ),
        ));
  }
}

class CardE extends StatelessWidget {
  String pathImage, name, evaluation, miniText, price;

  CardE(
      {required this.pathImage,
      required this.name,
      required this.evaluation,
      required this.miniText,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(bottom: 10, left: 10),
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(children: [
          Container(
              padding: EdgeInsets.only(bottom: 2),
              child: Image.asset(
                pathImage,
                height: 150,
                width: 250,
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                /*SizedBox(
                  width: 10,
                ),*/
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text(
                        "(${evaluation})",
                        style:
                            TextStyle(fontSize: 12, color: Colors.green[500]),
                      )
                    ],
                  ),
                )
              ])),
          Container(
            //margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              miniText,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    price,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  width: 65,
                  height: 30,
                  child: Center(
                      child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 20,
                  )),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

/*
class CustomizedRow extends StatelessWidget {
  CustomizedRow(myListe);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        CardE(
            pathImage: pathImage,
            name: name,
            evaluation: evaluation,
            miniText: miniText,
            price: price),
        CardE(
            pathImage: pathImage,
            name: name,
            evaluation: evaluation,
            miniText: miniText,
            price: price),
      ]),
    );
  }
}
*/

Widget customRow(Map infos1, Map infos2) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25),
    child: Row(
      children: [
        CardE(
            pathImage: infos1["pathImage"],
            name: infos1["name"],
            evaluation: infos1["evaluation"],
            miniText: infos1["miniText"],
            price: infos1["price"]),
        CardE(
            pathImage: infos2["pathImage"],
            name: infos2["name"],
            evaluation: infos2["evaluation"],
            miniText: infos2["miniText"],
            price: infos2["price"]),
      ],
    ),
  );
}
