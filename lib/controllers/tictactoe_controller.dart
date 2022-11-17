import 'package:tictactoe_inheritedwidget/models/tictactoe_model.dart';

class TictactoeController {
  final TictactoeModel tictactoeModel;

  TictactoeController({required this.tictactoeModel});

  List<String> get titactoeBoard => tictactoeModel.getMoves;

  void setPlayTurn(int index) {
    if (tictactoeModel.movePlayed(index) == '') {
      tictactoeModel.setPlay(tictactoeModel.getPlayerTurn ? 'X' : 'O', index);
      tictactoeModel.setTurn(tictactoeModel.getPlayerTurn ? false : true);
    } else {
      print('Casilla ya llenada');
    }
  }

  void restartGame() {
    tictactoeModel.clearBoard();
  }

  String playerMove(int index) {
    return tictactoeModel.movePlayed(index);
  }

  void setFilledBoxes() {
    tictactoeModel.setFilledBoxes(tictactoeModel.filledBoxes + 1);
  }

  String playerTurn() {
    return tictactoeModel.getPlayerTurn ? 'X' : 'O';
  }
}
