class Solution {
  bool judgeCircle(String moves) {
  //로봇의 좌표 x, y (0, 0)으로 지정
  int x = 0, y = 0;
  //문자열을 순회하고 문자열에 따라 x, y 좌표값 변경  
  for (int i = 0; i < moves.length; i++) {
    if (moves[i] == 'U') {
      y++; // 위로 이동
    } else if (moves[i] == 'D') {
      y--; // 아래로 이동
    } else if (moves[i] == 'L') {
      x--; // 왼쪽으로 이동
    } else if (moves[i] == 'R') {
      x++; // 오른쪽으로 이동
    }
  }
  //최종 좌표 확인후 결과 출력  
  return x == 0 && y == 0; 
    }
}