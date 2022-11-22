import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/ui/widgets/tictactoe_controller_widget.dart';

class TictactoeBoardGridWidget extends StatelessWidget {
  const TictactoeBoardGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 120,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
              onTap: (() {
                TictactoeControllerWidget.of(context).setPlayTurn(index);

                TictactoeControllerWidget.of(context)
                    .tictactoeController
                    .setFilledBoxes();
              }),
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 230, 206, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TictactoeDisplayMoveWidget(index: index)));
        },
        itemCount: 9,
      ),
    );
  }
}

class TictactoeDisplayMoveWidget extends StatelessWidget {
  const TictactoeDisplayMoveWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final move = TictactoeControllerWidget.of(context)
        .tictactoeController
        .playerMove(index);

    return Center(
      child: Text(move,
          style: TextStyle(
              color: move == 'X'
                  ? const Color.fromRGBO(46, 176, 134, 1)
                  : const Color.fromRGBO(184, 64, 94, 1),
              fontSize: 40,
              fontFamily: 'TitanOne')),
    );
  }
}
