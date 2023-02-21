import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';
import '../../utils/liquid_responsive.dart';

class WinnerWidget extends ConsumerWidget {
  const WinnerWidget({super.key, required this.playerNumber});

  final String playerNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
            width: LiquidResponsive.widthDistancePercentage(context, 85.7951),
            height: LiquidResponsive.heightDistancePercentage(context, 17.9372),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 221, 255),
                borderRadius: BorderRadius.circular(13)),
            child: Row(
              children: [
                SizedBox(
                    width: LiquidResponsive.widthDistancePercentage(
                        context, 3.1553)),
                Image.asset('assets/icon_winner.png'),
                SizedBox(
                    width: LiquidResponsive.widthDistancePercentage(
                        context, 2.1845)),
                GestureDetector(
                  onTap: () {
                    ref.read(tictactoeChange.notifier).restartGame();
                  },
                  child: Text(
                      'Ganador \nJugador ${playerNumber == 'O' ? '1' : '2'}',
                      style: const TextStyle(
                          color: Color(0xFF21005D),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 56.0,
                          height: 1.12,
                          letterSpacing: -0.25)),
                )
              ],
            )),
        SizedBox(
            height: LiquidResponsive.heightDistancePercentage(context, 8.7444))
      ],
    );
  }
}
