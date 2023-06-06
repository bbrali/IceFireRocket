class IceFireRocketBrain {
  
  int _player1sPositionOnBoard = 0;
  int _player2sPositionOnBoard = 0;
  
  bool _isFirstTimeForPlayer1 = true;
  bool _isFirstTimeForPlayer2 = true;

  String _tempVarForPlayer1 = '';
  String _tempVarForPlayer2 = '';

  int _playerTurnTracker = 0;

  String _whoseTurnText = 'Player 1\'s Turn';

  List<String> _allItemsOnBoard = [
    '40',
    '39',
    'fire',
    '37',
    '36',
    '35',
    '34',
    '33',
    '32',
    '31',
    '30',
    '29',
    'ice',
    '27',
    '26',
    '25',
    '24',
    '23',
    '22',
    '21',
    '20',
    'ice',
    '18',
    '17',
    '16',
    'rocket',
    '14',
    '13',
    '12',
    '11',
    '10',
    '09',
    '08',
    'fire',
    '06',
    '05',
    '04',
    '03',
    '02',
    '01'
  ];

  int getPlayer1sPositionOnBoard() => _player1sPositionOnBoard;
  void setPlayer1sPositionOnBoard(int value) =>
      _player1sPositionOnBoard = value;

  int getPlayer2sPositionOnBoard() => _player2sPositionOnBoard;
  void setPlayer2sPositionOnBoard(int value) =>
      _player2sPositionOnBoard = value;

  bool getIsFirstTimeForPlayer1() => _isFirstTimeForPlayer1;
  void setIsFirstTimeForPlayer1(bool value) => _isFirstTimeForPlayer1 = value;

  bool getIsFirstTimeForPlayer2() => _isFirstTimeForPlayer2;
  void setIsFirstTimeForPlayer2(bool value) => _isFirstTimeForPlayer2 = value;

  String getTempVarForPlayer1() => _tempVarForPlayer1;
  void setTempVarForPlayer1(String value) => _tempVarForPlayer1 = value;

  String getTempVarForPlayer2() => _tempVarForPlayer2;
  void setTempVarForPlayer2(String value) => _tempVarForPlayer2 = value;

  int getPlayerTurnTracker() => _playerTurnTracker;
  void setPlayerTurnTracker(int value) => _playerTurnTracker = value;

  String getWhoseTurnText() => _whoseTurnText;
  void setWhoseTurnText(String value) => _whoseTurnText = value;

  String getAnItemFromAllItemsOnBoardList(int index) => _allItemsOnBoard[index];
  void setAnItemFromAllItemsOnBoardList(int index, String value) =>
      _allItemsOnBoard[index] = value;

  // Method to reset our Game(Reset the values of required variables actually).
  void resetGame() {
    _player1sPositionOnBoard = 0;
    _player2sPositionOnBoard = 0;

    _isFirstTimeForPlayer1 = true;
    _isFirstTimeForPlayer2 = true;

    _tempVarForPlayer1 = '';
    _tempVarForPlayer2 = '';

    _playerTurnTracker = 0;

    _whoseTurnText = 'Player 1\'s Turn';
  }
}
