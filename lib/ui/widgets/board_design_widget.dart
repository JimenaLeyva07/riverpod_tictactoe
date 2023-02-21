import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe_inheritedwidget/main.dart';
import 'package:tictactoe_inheritedwidget/ui/widgets/winner_widget.dart';

import '../../utils/liquid_responsive.dart';
import '../../utils/elements_design.dart';
import 'tictactoe_display_move_widget.dart';

class BoardDesignWidget extends ConsumerWidget {
  const BoardDesignWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchMoves = ref.watch(tictactoeChange);
    String winner = '';
    winner = watchMoves.tictactoeController.verifyWinner();
    return winner != ''
        ? WinnerWidget(playerNumber: winner)
        : SizedBox(
            height: LiquidResponsive.heightDistancePercentage(context, 34.3049),
            width: LiquidResponsive.widthDistancePercentage(context, 74.2718),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 101,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0),
              itemBuilder: (BuildContext context, index) {
                final changeRead = ref.read(tictactoeChange.notifier);
                return GestureDetector(
                  onTap: () {
                    if (winner == '') changeRead.setPlayTurn(index);
                    changeRead.setFilledBoxes();
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        border: ElementsDesign.tileBorder(index),
                        color: const Color(0x00000000),
                      ),
                      child: TictactoeDisplayMoveWidget(index: index)),
                );
              },
              itemCount: 9,
            ));
  }
}
