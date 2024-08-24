import 'package:flutter/material.dart';

class Metrics {
  static double screenWidth = 0;
  static double screenHeight = 0;

  static void init(BuildContext context){
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
