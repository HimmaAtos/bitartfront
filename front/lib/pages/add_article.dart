// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_print

import 'package:front/pages/add_article2.dart';
import 'package:http/http.dart' as http;
import 'package:front/pages/success.dart';
import 'package:localstorage/localstorage.dart';
import './../services/articleService.dart';
import 'package:front/models/ArticleModel.dart';

import 'package:flutter/material.dart';

class AddArticle extends StatefulWidget {
  const AddArticle({Key? key}) : super(key: key);

  @override
  State<AddArticle> createState() => _AddArticleState();
}

class _AddArticleState extends State<AddArticle> {
  String endPoint = "/http:127.0.0.1:8000/addArticle";
  bool isSuccessVisible = false;

  LocalStorage article_storage = new LocalStorage("article");

  final titleController = TextEditingController();
  final dimensionController = TextEditingController();
  final supportController = TextEditingController();
  final outilController = TextEditingController();

  void _toggleSuccess() {
    setState(() {
      isSuccessVisible = !isSuccessVisible;
      if (isSuccessVisible) {
        _hideSuccessAfterDelay();
      }
    });
  }

  void _hideSuccessAfterDelay() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isSuccessVisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xDB2C736C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, top: 40, right: 16),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Center(
                  child: Text(
                    'Article',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 80), // Adjusted spacing
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  //padding: EdgeInsets.only( top: 210),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 16, top: 30),
                        child: const Text(
                          "Ajouter un article",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              padding: EdgeInsets.all(12),
                              child: Text("1"),
                              decoration: ShapeDecoration(
                                color: Color(0xFFE3B71D),
                                shape: CircleBorder(),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                width:
                                    20, // Adjust the width of the yellow line
                                child: Container(
                                  color:
                                      Colors.amber, // Color of the yellow line
                                  height: 1, // Height of the yellow line
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50),
                              padding: EdgeInsets.all(12),
                              child: Text("2"),
                              decoration: ShapeDecoration(
                                color: Colors.grey[400],
                                shape: CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Form(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            padding: const EdgeInsets.only(left: 22, top: 50),
                            child: Text(
                              'Titre', // Title for the first input
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  controller: titleController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Nom article',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            padding: const EdgeInsets.only(left: 22),
                            child: Text(
                              'Dimensions', // Title for the first input
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: dimensionController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '1090 x 1080',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            padding: const EdgeInsets.only(left: 22),
                            child: Text(
                              'Support', // Title for the first input
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  controller: supportController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Toile',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            padding: const EdgeInsets.only(left: 22),
                            child: Text(
                              'Outils', // Title for the first input
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  controller: outilController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Outils',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Add more input fields similarly for Title 2, 3, and 4
                          SizedBox(height: 20), // Add spacing
                          // Added spacing
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30),
                              ),
                              /*Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                          SizedBox(height: 20), // Added spacing
                          Container(
                            width: 200,
                            margin: EdgeInsets.symmetric(horizontal: 90),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [Colors.yellow, Color(0xDB2C736C)],
                              ),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () async {
                                  print("in process");
                                  // _toggleSuccess();
                                  await article_storage.ready;
                                  ArticleModel articleModel =
                                      new ArticleModel();
                                  articleModel.title = titleController.text;
                                  articleModel.description =
                                      titleController.text;
                                  article_storage.setItem(
                                      "title", titleController.text);
                                  article_storage.setItem(
                                      "dimensions", dimensionController.text);
                                  article_storage.setItem(
                                      "support", supportController.text);
                                  article_storage.setItem(
                                      "outils", outilController.text);
                                  Navigator.of(context).pushNamed("/add2");
                                  // Navigator.of(context).pushNamed("/add2");
                                },

                                // style: TextButton.styleFrom(
                                //   padding: EdgeInsets.symmetric(vertical: 10),
                                // ),
                                child: Text(
                                  "Suivant",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20), // Added spacing
                          Visibility(
                            visible: isSuccessVisible,
                            child: Center(
                              child: Success(),
                            ),
                          ),
                        ],
                      ))
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
