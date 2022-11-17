import 'package:flutter/material.dart';

class TictactoeControllerWidget extends InheritedWidget {
  const TictactoeControllerWidget({super.key, required super.child});

  static TictactoeControllerWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<TictactoeControllerWidget>();
  }

  @override
  bool updateShouldNotify(TictactoeControllerWidget oldWidget) {
    return true;
  }
}
