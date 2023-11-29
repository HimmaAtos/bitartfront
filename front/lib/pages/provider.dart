// me when i m learniig provider

import 'package:flutter/material.dart';

class test extends ChangeNotifier {
  String a_test;

  test({this.a_test = "test"});
  // ok voici la valeure initiale du provider

  void onchange({required String new_user}) {
    a_test = new_user;
  }
}
