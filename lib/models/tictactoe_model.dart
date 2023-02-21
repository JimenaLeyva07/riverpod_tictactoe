class TictactoeModel {
  List<String> _playedList = List<String>.filled(9, '');
  late bool _playerTurn;
  int _filledBoxes = 0;
  bool _showWinner = false;
  TictactoeModel({required bool turn}) {
    _playerTurn = turn;
  }

  List<String> get getMoves => _playedList;

  bool get getPlayerTurn => _playerTurn;

  int get filledBoxes => _filledBoxes;

  void setPlay(String move, int index) {
    _playedList[index] = move;
  }

  void setTurn(bool turn) {
    _playerTurn = turn;
  }

  bool setShowWinner(bool winner) {
    return _showWinner = winner;
  }

  String movePlayed(int index) {
    return _playedList[index];
  }

  void clearBoard() {
    _playedList = ['', '', '', '', '', '', '', '', ''];
    _filledBoxes = 0;
    _playerTurn = true;
  }

  void setFilledBoxes(int box) {
    _filledBoxes = box;
  }
}
