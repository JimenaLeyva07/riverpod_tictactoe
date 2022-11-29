import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:tictactoe_inheritedwidget/controllers/tictactoe_controller.dart';
import 'package:tictactoe_inheritedwidget/main.dart';
//import 'package:tictactoe_inheritedwidget/models/tictactoe_model.dart';
//import 'package:tictactoe_inheritedwidget/ui/widgets/tictactoe_controller_widget.dart';

import '../widgets/tictactoe_title_widget.dart';
import '../widgets/tictactoe_board_grid_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 238),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TictactoeTitleWidget(),
              TictactoeBoardGridWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return FloatingActionButton.large(
              onPressed: () {
                //restartGame();
                ref.read(tictactoeChange.notifier).restartGame();
              },
              backgroundColor: const Color.fromRGBO(49, 53, 110, 1),
              child: const Icon(Icons.replay));
        },
      ),
    );
  }
}
