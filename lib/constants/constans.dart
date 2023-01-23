import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String title = "Pokedex";
  static TextStyle getTitleStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(25),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getNameStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getTypeChipStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(18.5),
    );
  }

  static _calculateFontSize(double size) {
    if (Device.orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.01).sp;
    }
  }

  static getPokeInfoTextStyle() {
    return TextStyle(
        fontSize: _calculateFontSize(16),
        fontWeight: FontWeight.bold,
        color: Colors.black);
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
        fontSize: _calculateFontSize(20),
        fontWeight: FontWeight.bold,
        color: Colors.black);
  }
}
