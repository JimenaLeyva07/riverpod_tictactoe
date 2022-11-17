import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/ui/widgets/tictactoe_controller_widget.dart';

class TictactoeBoardGridWidget extends StatelessWidget {
  const TictactoeBoardGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, index) {
          // final String test = TictactoeControllerWidget.of(context)
          //     .tictactoeController
          //     .playerMove(index);
          return GestureDetector(
              onTap: (() {
                TictactoeControllerWidget.of(context)
                    .tictactoeController
                    .setPlayTurn(index);

                print(TictactoeControllerWidget.of(context)
                    .tictactoeController
                    .titactoeBoard);
              }),
              child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.blueGrey)),
                  child: Center(
                    child: Text(TictactoeControllerWidget.of(context)
                        .tictactoeController
                        .playerMove(index)),
                  )));
        },
        itemCount: 9,
      ),
    );
  }
}
