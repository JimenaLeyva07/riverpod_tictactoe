import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';
import '../../utils/liquid_responsive.dart';

class StartRestarTitleWidget extends ConsumerWidget {
  const StartRestarTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filledBoxes =
        ref.watch(tictactoeChange).tictactoeController.filledBoxes();
    return TextButton(
        onPressed: () {
          if (filledBoxes > 0) {
            ref.read(tictactoeChange.notifier).restartGame();
          }
        },
        child: Text(filledBoxes > 0 ? 'Reiniciar' : 'Inicia la partida',
            style: TextStyle(
                color: const Color.fromRGBO(28, 27, 31, 1),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: LiquidResponsive.diagonalDistance(context, 2.5))));
  }
}
