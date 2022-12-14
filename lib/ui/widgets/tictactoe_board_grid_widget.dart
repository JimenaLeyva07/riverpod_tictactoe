import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tictactoe_inheritedwidget/main.dart';

import 'tictactoe_display_move_widget.dart';

class TictactoeBoardGridWidget extends ConsumerWidget {
  const TictactoeBoardGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          return Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final changeRead = ref.read(tictactoeChange.notifier);
              return GestureDetector(
                  onTap: (() {
                    changeRead.setPlayTurn(index);
                    changeRead.setFilledBoxes();
                  }),
                  child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide.none,
                            top: BorderSide(color: Colors.black)),
                        color: Color.fromRGBO(238, 230, 206, 1),
                        //borderRadius: BorderRadius.circular(10)
                      ),
                      child: TictactoeDisplayMoveWidget(index: index)));
            },
          );
        },
        itemCount: 9,
      ),
    );
  }
}
