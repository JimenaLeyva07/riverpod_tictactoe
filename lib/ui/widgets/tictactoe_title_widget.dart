import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe_inheritedwidget/main.dart';
//import 'package:tictactoe_inheritedwidget/ui/widgets/tictactoe_controller_widget.dart';

class TictactoeTitleWidget extends ConsumerWidget {
  const TictactoeTitleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final playerTurn =
    //     TictactoeControllerWidget.of(context).tictactoeController.playerTurn();
    return Column(
      children: [
        const Text(
          'Triki!',
          style: TextStyle(
              color: Color.fromRGBO(49, 53, 110, 1),
              fontSize: 80,
              fontFamily: 'TitanOne'),
        ),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final playerTurn =
                ref.watch(tictactoeChange).tictactoeController.playerTurn();
            return Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: playerTurn == 'X'
                      ? const Color.fromRGBO(46, 176, 134, 0.3)
                      : const Color.fromRGBO(184, 64, 94, 0.3),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                'Jugador: $playerTurn',
                style: const TextStyle(
                  color: Color.fromARGB(255, 50, 50, 50),
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  // background: Paint()
                  //   ..color = playerTurn == 'X'
                  //       ? const Color.fromRGBO(46, 176, 134, 0.3)
                  //       : const Color.fromRGBO(184, 64, 94, 0.3)
                  //   ..strokeWidth = 20
                  //   ..strokeJoin = StrokeJoin.round
                  //   ..style = PaintingStyle.stroke
                  // backgroundColor: playerTurn == 'X'
                  //     ? const Color.fromRGBO(46, 176, 134, 0.3)
                  //     : const Color.fromRGBO(184, 64, 94, 0.3)
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
