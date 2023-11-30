// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:front/pages/widgets.dart';

class AddArticle2 extends StatefulWidget {
  const AddArticle2({super.key});

  @override
  State<AddArticle2> createState() => _AddArticle2State();
}

class _AddArticle2State extends State<AddArticle2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xDB2C736C),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('ARTICLE'),
        backgroundColor: Color(0xFF2C736C),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Center(child: Text("")),
            ),
          ),
          Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 25),
                        child: Text(
                          "Ajouter un article",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
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
                              child: Icon(
                                Icons.verified_user_sharp,
                                color: Colors.green,
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
                              padding: EdgeInsets.all(12),
                              child: Text("2"),
                              decoration: ShapeDecoration(
                                color: Color(0xFFE3B71D),
                                shape: CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                        child: Text(
                          "Choisir une image",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Center(
                        child: Opacity(
                          opacity: 0.50,
                          child: Container(
                            width: 345,
                            height: 148,
                            decoration: ShapeDecoration(
                              color: Color(0x99C2C2C2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.upload_file,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Center(
                        child: Opacity(
                          opacity: 0.50,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: 345,
                            height: 148,
                            decoration: ShapeDecoration(
                              color: Color(0x99C2C2C2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Text("Decrivez votre oeuvre"),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              //margin : EdgeInsets.only(bottom: 20),
                              width: 150,
                              //margin: EdgeInsets.symmetric(
                              //  horizontal: 20, vertical: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [Colors.yellow, Color(0xDB2C736C)],
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                ),
                                child: Text(
                                  "PRECEDENT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //margin : EdgeInsets.only(bottom: 20),
                              width: 150,
                              // margin: EdgeInsets.symmetric(
                              //  horizontal: 20, vertical: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [Colors.yellow, Color(0xDB2C736C)],
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                ),
                                child: Text(
                                  "CREATE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
