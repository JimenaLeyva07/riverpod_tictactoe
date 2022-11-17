import 'package:flutter/material.dart';
import 'package:tictactoe_inheritedwidget/controllers/tictactoe_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TictactoeController tictactoeController = TictactoeController();
  late bool playerTurn;
  int index = 0;

  @override
  void initState() {
    super.initState();
    playerTurn = true;
  }

  void moveTurn(bool playerTurn, int index) {
    setState(() {
      bool turn = tictactoeController.changeTurn(playerTurn);
      tictactoeController.setPlay(turn, index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tic Tac Toe'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: GridView.builder(
                // padding: const EdgeInsets.symmetric(
                //   horizontal: 20,
                //   // vertical: 30,
                // ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                      onTap: (() {
                        setState(() {
                          tictactoeController.setPlay(playerTurn, index);
                          playerTurn =
                              tictactoeController.changeTurn(playerTurn);
                        });
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey)),
                        child: Center(
                            child: Text(tictactoeController.titactoeModel
                                .playerMovePosition(index))),
                      ));
                },
                itemCount: 9,
              ),
            ),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    tictactoeController.restartGame();
                  });
                },
                child: const Icon(Icons.replay))
          ],
        ));
  }
}
