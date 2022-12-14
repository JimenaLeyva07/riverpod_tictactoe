import 'package:flutter/material.dart';

import '../../utils/liquid_responsive.dart';
import '../widgets/board_design_widget.dart';
import '../widgets/player_turn_widget.dart';
import '../widgets/start_restart_title_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(208, 188, 255, 1),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height:
                  LiquidResponsive.heightDistancePercentage(context, 17.9372),
            ),
            //Player Turn Buttons
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const PlayerTurnWidget(turnOfPlayer: 'Jugador 1 O'),
              SizedBox(
                width:
                    LiquidResponsive.widthDistancePercentage(context, 4.8544),
              ),
              const PlayerTurnWidget(turnOfPlayer: 'Jugador 2 X')
            ]),
            SizedBox(
                height:
                    LiquidResponsive.heightDistancePercentage(context, 4.9327)),
            const StartRestarTitleWidget(),
            SizedBox(
                height:
                    LiquidResponsive.heightDistancePercentage(context, 6.2780)),
            const BoardDesignWidget(),
            SizedBox(
                height: LiquidResponsive.heightDistancePercentage(
                    context, 19.3946)),
            //Footer
            Image.asset('assets/patrocina.png',
                width:
                    LiquidResponsive.widthDistancePercentage(context, 83.4951),
                height:
                    LiquidResponsive.heightDistancePercentage(context, 5.9417))
          ],
        ));
  }
}
