import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UIhelper {
  UIhelper._();

  static double getAppTitleWidgetHeight() {
    return Device.orientation == Orientation.portrait
        ? Adaptive.sp(35)
        : Adaptive.sp(35);
  }

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };
  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }

  static double getAppImageWidgetHeight() {
    return Device.orientation == Orientation.portrait
        ? Adaptive.sp(38)
        : Adaptive.sp(38);
  }

  static double calculatePokeIMgAndBallSize() {
    if (Device.orientation == Orientation.portrait) {
      return 20.w;
    } else {
      return 42.5.sp;
    }
  }
}
