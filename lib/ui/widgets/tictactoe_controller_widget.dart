import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/controllers/tictactoe_controller.dart';

class TictactoeControllerWidget extends InheritedWidget {
  const TictactoeControllerWidget(
      {super.key,
      required super.child,
      required this.tictactoeController,
      required this.playerTurn});

  final TictactoeController tictactoeController;
  final String playerTurn;

  static TictactoeControllerWidget of(BuildContext context) {
    final TictactoeControllerWidget? result =
        context.dependOnInheritedWidgetOfExactType<TictactoeControllerWidget>();
    assert(result != null, 'No TictactoeControllerWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TictactoeControllerWidget oldWidget) {
    return oldWidget.playerTurn != playerTurn;
  }
}
