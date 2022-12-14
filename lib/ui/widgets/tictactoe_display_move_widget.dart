import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';

class TictactoeDisplayMoveWidget extends ConsumerWidget {
  const TictactoeDisplayMoveWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final move =
            ref.watch(tictactoeChange).tictactoeController.playerMove(index);
        return Center(
          child: Text(move,
              style: TextStyle(
                  color: move == 'X'
                      ? const Color.fromRGBO(46, 176, 134, 1)
                      : const Color.fromRGBO(184, 64, 94, 1),
                  fontSize: 40,
                  fontFamily: 'TitanOne')),
        );
      },
    );
  }
}
