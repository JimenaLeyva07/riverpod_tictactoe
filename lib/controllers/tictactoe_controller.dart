import 'package:tictactoe_inheritedwidget/models/tictactoe_model.dart';

class TictactoeController {
  final TictactoeModel _tictactoeModel = TictactoeModel();

  TictactoeModel get titactoeModel => _tictactoeModel;

  void setPlay(bool turnPlayed, int index) {
    _tictactoeModel.setPlay(turnPlayed ? 'X' : 'O', index);
  }

  void restartGame() {
    _tictactoeModel.clearBoard();
  }

  bool changeTurn(bool player) {
    bool playerTurn = player ? false : true;
    return playerTurn;
  }
}
