import 'package:flutter/material.dart';
import 'package:xenshop_core/base/colors.dart';
import 'package:xenshop_core/base/xenshop_text_theme.dart';

class Styles {
  static ThemeData lightTheme(){
    return ThemeData(
      primaryColor: blue,
      brightness: Brightness.light,
      textTheme: XenshopTextTheme(),
    );
  }
}