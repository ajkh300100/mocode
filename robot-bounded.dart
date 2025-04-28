class Solution {
  bool isRobotBounded(String instructions) {
    //초기 위치 및 방향 설정
  int x = 0, y = 0;
  // 방향을 배열로 나타낸다
  List<List<int>> directions = [
    [0, 1],   // 북
    [1, 0],   // 동
    [0, -1],  // 남
    [-1, 0],  // 서
  ];
  int dir = 0;
  //주어진 명령어 수행
   for (var instruction in instructions.split('')) {
    if (instruction == 'G') {
      // 'G'이면 현재 방향으로 한 칸 이동한다
      x += directions[dir][0];
      y += directions[dir][1];
    } else if (instruction == 'L') {
      // 'L'이면 왼쪽으로 90도 회전 => 방향 인덱스를 1 감소 (mod 4)
      dir = (dir + 3) % 4;
    } else if (instruction == 'R') {
      // 'R'이면 오른쪽으로 90도 회전 => 방향 인덱스를 1 증가 (mod 4)
      dir = (dir + 1) % 4;
    }
  }
  return (x == 0 && y == 0) || (dir != 0);
  }
}