import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/ui/widgets/tictactoe_controller_widget.dart';

class TictactoeTitleWidget extends StatelessWidget {
  const TictactoeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('TicTacToe'),
        Text(
            'Turno: ${TictactoeControllerWidget.of(context).tictactoeController.playerTurn()}'),
      ],
    );
  }
}
