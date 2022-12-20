import 'package:flutter/material.dart';
import '../interfaces/utils_interface.dart';

class ElementsDesign extends UtilsInterface {
  static Border tileBorder(int index) {
    BorderSide lineStyle =
        const BorderSide(color: Color.fromRGBO(100, 67, 129, 1), width: 3.0);
    switch (index) {
      case 0:
        return Border(right: lineStyle, bottom: lineStyle);
      case 1:
        return Border(right: lineStyle, bottom: lineStyle, left: lineStyle);
      case 2:
        return Border(bottom: lineStyle, left: lineStyle);
      case 3:
        return Border(top: lineStyle, right: lineStyle, bottom: lineStyle);
      case 5:
        return Border(top: lineStyle, bottom: lineStyle, left: lineStyle);
      case 6:
        return Border(top: lineStyle, right: lineStyle);
      case 7:
        return Border(top: lineStyle, right: lineStyle, left: lineStyle);
      case 8:
        return Border(top: lineStyle, left: lineStyle);
      default:
        return Border.all(
            color: const Color.fromRGBO(100, 67, 129, 1), width: 3.0);
    }
  }

  //function that returns color
}
