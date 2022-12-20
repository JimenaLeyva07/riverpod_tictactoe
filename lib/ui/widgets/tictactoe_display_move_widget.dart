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
            child: move == 'X'
                ? Image.asset('assets/x_icon.png')
                : move == 'O'
                    ? Image.asset('assets/o_icon.png')
                    : const Text(''));
      },
    );
  }
}
