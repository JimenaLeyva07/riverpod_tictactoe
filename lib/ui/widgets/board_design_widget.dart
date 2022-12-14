import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe_inheritedwidget/main.dart';

import '../../utils/liquid_responsive.dart';
import '../../utils/tile_border.dart';
import 'tictactoe_display_move_widget.dart';

class BoardDesignWidget extends ConsumerWidget {
  const BoardDesignWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
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
            return Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final changeRead = ref.read(tictactoeChange.notifier);
              return GestureDetector(
                onTap: () {
                  changeRead.setPlayTurn(index);
                  changeRead.setFilledBoxes();
                },
                child: Container(
                    decoration: BoxDecoration(
                      border: tileBorder(index),
                      color: const Color(0x00000000),
                    ),
                    child: TictactoeDisplayMoveWidget(index: index)),
              );
            });
          },
          itemCount: 9,
        ));
  }
}
