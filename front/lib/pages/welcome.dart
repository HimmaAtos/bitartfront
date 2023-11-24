// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:front/pages/widgets.dart';
//import 'package:front/my_flutter_app_icons.dart';

class BitArtWelcome extends StatefulWidget {
  const BitArtWelcome({super.key});

  @override
  State<BitArtWelcome> createState() => _BitArtWelcomeState();
}

class _BitArtWelcomeState extends State<BitArtWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xFF2C736C),
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/background2.png",
              ),
              fit: BoxFit.cover)),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [buttonbGetStated(context)],
        ),
      ),
    ));
  }
}
