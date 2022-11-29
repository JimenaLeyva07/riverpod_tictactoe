import 'package:flutter/foundation.dart';
import 'package:tictactoe_inheritedwidget/controllers/tictactoe_controller.dart';
import 'package:tictactoe_inheritedwidget/models/tictactoe_model.dart';

class TictactoeChangeNotifier extends ChangeNotifier {
  TictactoeController tictactoeController =
      TictactoeController(tictactoeModel: TictactoeModel(turn: true));

  void setPlayTurn(int index) {
    tictactoeController.setPlayTurn(index);
    notifyListeners();
  }

  void restartGame() {
    tictactoeController.restartGame();
    notifyListeners();
  }

  void setFilledBoxes() {
    tictactoeController.setFilledBoxes();
    notifyListeners();
  }
}
