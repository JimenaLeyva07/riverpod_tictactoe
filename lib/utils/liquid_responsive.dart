import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/interfaces/utils_interface.dart';

class LiquidResponsive extends UtilsInterface {
  static double heightDistancePercentage(
      BuildContext context, double percentage) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double totalPercentage = 100;
    return (percentage * deviceHeight) / totalPercentage;
  }

  static double widthDistancePercentage(
      BuildContext context, double percentage) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double totalPercentage = 100;
    return (percentage * deviceWidth) / totalPercentage;
  }

  static double diagonalDistance(BuildContext context, double percentage) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double totalPercentage = 100;

    double diagonal = math.sqrt(math.pow(width, 2) + math.pow(height, 2));

    return (percentage * diagonal) / totalPercentage;
  }
}
