class Solution {
    //3x3 보드배열 생성
    List<List<String>> board = List.generate(3, (_) => List.filled(3,''));
  String tictactoe(List<List<int>> moves) {
     // moves 순회 하면서 보드 상태를 저장
    // var list = [["a", "b"], ["c", "d"]]
    for (int i=0; i<moves.length; i++) {
        int row = moves[i][0];
        int col = moves[i][1];
        print("row: $row col: $col");
        board[row][col] = (i % 2 == 0) ? "A" : "B";
    }
    
    if (checkWin("A")) return "A";
    if (checkWin("B")) return "B";

    return moves.length == 9 ? "Draw" : "Pending";
  }
    //보드를 순회하며 승리조건 검사
   bool checkWin(String player) {
    // 가로, 세로에 같은 플레이어가 앉아 있는지
    // (0,0) (0,1) (0,2)
    // (1,0) (1,1) (1,2)
    // (2,0) (2,1) (2,2)
    for (int i=0; i<3; i++) {
        if ( (board[i][0] == player && board[i][1] == player && board[i][2] == player) ||
        (board[0][i] == player && board[1][i] == player && board[2][i] == player) ) {
            return true;
        }
    }
    // 대각선에 같은 플레이어가 앉아 있는지
    if ( (board[0][0] == player && board[1][1] == player && board[2][2] == player) || 
    ( board[0][2] == player && board[1][1] == player && board[2][0] == player ) ) {
        return true;
    }

    return false;
  }
  
}