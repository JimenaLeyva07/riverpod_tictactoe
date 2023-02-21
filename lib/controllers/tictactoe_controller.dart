import 'package:tictactoe_inheritedwidget/models/tictactoe_model.dart';

class TictactoeController {
  final TictactoeModel tictactoeModel;

  TictactoeController({required this.tictactoeModel});

  List<String> get titactoeBoard => tictactoeModel.getMoves;

  void setPlayTurn(int index) {
    if (tictactoeModel.movePlayed(index) == '') {
      tictactoeModel.setPlay(tictactoeModel.getPlayerTurn ? 'O' : 'X', index);

      tictactoeModel.setTurn(tictactoeModel.getPlayerTurn ? false : true);
    } else {
      print('Casilla ya llenada');
    }
  }

  void restartGame() {
    tictactoeModel.clearBoard();
  }

  bool showWinner(bool winner) {
    return tictactoeModel.setShowWinner(winner);
  }

  String playerMove(int index) {
    return tictactoeModel.movePlayed(index);
  }

  void setFilledBoxes() {
    tictactoeModel.setFilledBoxes(tictactoeModel.filledBoxes + 1);
  }

  int filledBoxes() {
    return tictactoeModel.filledBoxes;
  }

  String playerTurn() {
    return tictactoeModel.getPlayerTurn ? 'X' : 'O';
  }

  String verifyWinner() {
    List<String> movesMade = tictactoeModel.getMoves;

    //First Row
    if (movesMade[0] != '' &&
        movesMade[0] == movesMade[1] &&
        movesMade[0] == movesMade[2]) {
      return movesMade[0];
    }

    //Second Rowty
    if (movesMade[3] != '' &&
        movesMade[3] == movesMade[4] &&
        movesMade[3] == movesMade[5]) {
      return movesMade[3];
    }

    //Third Row
    if (movesMade[6] != '' &&
        movesMade[6] == movesMade[7] &&
        movesMade[6] == movesMade[8]) {
      return movesMade[6];
    }

    //First Column
    if (movesMade[0] != '' &&
        movesMade[0] == movesMade[3] &&
        movesMade[0] == movesMade[6]) {
      return movesMade[0];
    }

    //Second Column
    if (movesMade[1] != '' &&
        movesMade[1] == movesMade[4] &&
        movesMade[1] == movesMade[7]) {
      return movesMade[1];
    }

    //Third Column
    if (movesMade[2] != '' &&
        movesMade[2] == movesMade[5] &&
        movesMade[2] == movesMade[8]) {
      return movesMade[2];
    }

    //First Diagonal
    if (movesMade[0] != '' &&
        movesMade[0] == movesMade[4] &&
        movesMade[0] == movesMade[8]) {
      return movesMade[0];
    }

    //Second Diagonal
    if (movesMade[2] != '' &&
        movesMade[2] == movesMade[4] &&
        movesMade[2] == movesMade[6]) {
      return movesMade[2];
    }
    return '';
  }
}
