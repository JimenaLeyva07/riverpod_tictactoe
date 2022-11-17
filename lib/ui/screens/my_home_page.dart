import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/controllers/tictactoe_controller.dart';
import 'package:tictactoe_inheritedwidget/models/tictactoe_model.dart';
import 'package:tictactoe_inheritedwidget/ui/widgets/tictactoe_controller_widget.dart';

import '../widgets/tictactoe_appbar_widget.dart';
import '../widgets/tictactoe_board_grid_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TictactoeController tictactoeController;

  @override
  void initState() {
    super.initState();
    tictactoeController =
        TictactoeController(tictactoeModel: TictactoeModel(turn: true));
  }

  void restartGame() {
    setState(() {
      tictactoeController.restartGame();
    });
  }

  @override
  Widget build(BuildContext context) {
    return TictactoeControllerWidget(
      tictactoeController: tictactoeController,
      playerTurn: 'Turno Jugador ${tictactoeController.playerTurn()}',
      child: Scaffold(
          appBar: const TictactoeAppbarWidget(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TictactoeBoardGridWidget(),
              FloatingActionButton(
                  onPressed: () {
                    restartGame();
                  },
                  child: const Icon(Icons.replay))
            ],
          )),
    );
  }
}
