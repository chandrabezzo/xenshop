import 'package:flutter/material.dart';
import 'package:xenshop_core/xenshop_core.dart';

class Styles {
  static ThemeData lightTheme(){
    return ThemeData(
      primaryColor: blue,
      brightness: Brightness.light,
      textTheme: XenshopTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: blue,
        iconTheme: IconThemeData(
          color: white,
        ),
      ),
    );
  }
}