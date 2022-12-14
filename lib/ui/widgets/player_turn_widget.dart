import 'package:flutter/material.dart';

import '../../utils/liquid_responsive.dart';

class PlayerTurnWidget extends StatelessWidget {
  const PlayerTurnWidget({
    super.key,
    required this.turnOfPlayer,
  });

  final String turnOfPlayer;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: LiquidResponsive.heightDistancePercentage(context, 4.4843),
        width: LiquidResponsive.widthDistancePercentage(context, 34.9514),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 243, 1),
            borderRadius: BorderRadius.circular(
                LiquidResponsive.diagonalDistance(context, 2))),
        child: Text(
          turnOfPlayer,
          style: const TextStyle(
              color: Color.fromRGBO(103, 80, 164, 1),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ));
  }
}
