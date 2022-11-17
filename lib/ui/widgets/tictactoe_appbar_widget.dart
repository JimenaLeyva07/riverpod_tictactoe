import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/ui/widgets/tictactoe_controller_widget.dart';

class TictactoeAppbarWidget extends StatelessWidget with PreferredSizeWidget {
  const TictactoeAppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
          'TicTacToe - Turno: ${TictactoeControllerWidget.of(context).tictactoeController.playerTurn()}'),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 150);
}
