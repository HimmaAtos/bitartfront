import 'package:flutter/material.dart';
import 'package:front/constante.dart';
import 'package:front/models/ArticleModel.dart';

Widget ArticleCard(BuildContext context, ArticleModel articleModel) {
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
              "images/art4.png",
              height: 150,
              width: 250,
              fit: BoxFit.cover,
            )
            // child: Image.network("image/art4.png")
            // "${backend}${articleModel.image}"
            ),
        Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Text(
                    articleModel.title ?? "",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      color: Colors.amber,
                      size: 15,
                    ),
                    Text(
                      "(0)",
                      style: TextStyle(fontSize: 12, color: Colors.green[500]),
                    )
                  ],
                ),
              )
            ])),
        Container(
          //margin: EdgeInsets.symmetric(vertical: 12),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Text(
            articleModel.description ?? "",
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
                  articleModel.price.toString(),
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8, right: 8),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                width: 65,
                height: 30,
                child: Center(
                    child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/details",
                      arguments: ArticleModel(
                        image: articleModel.image,
                        title: articleModel.title,
                        description: articleModel.description,
                        price: articleModel.price,
                        // evaluation: evaluation,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    size: 20,
                  ),
                  color: Colors.white,
                )),
              )
            ],
          ),
        )
      ]),
    ),
  );
}
