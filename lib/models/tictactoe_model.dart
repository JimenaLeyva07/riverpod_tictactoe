class TictactoeModel {
  List<String> _playedList = ['', '', '', '', '', '', '', '', ''];

  List<String> get getMoves => _playedList;

  void setPlay(String move, int index) {
    _playedList[index] = move;
  }

  String playerMovePosition(int index) {
    return _playedList[index];
  }

  void clearBoard() {
    _playedList = ['', '', '', '', '', '', '', '', ''];
  }
}
