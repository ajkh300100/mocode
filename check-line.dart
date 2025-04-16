class Solution {
  bool checkStraightLine(List<List<int>> coordinates) {
    // 첫 번째 점과 두 번째 점을 기준으로 직선의 기울기를 계산
    int x0 = coordinates[0][0];
    int y0 = coordinates[0][1];
    int x1 = coordinates[1][0];
    int y1 = coordinates[1][1];

    // 기준 벡터 설정 (dx, dy)
    int dx = x1 - x0;
    int dy = y1 - y0;

    // 세 번째 점부터 마지막 점까지 반복
    for (int i = 2; i < coordinates.length; i++) {
      int x = coordinates[i][0];
      int y = coordinates[i][1];

      // 모든 점이 기준 기울기를 만족하는지 체크
      if ((x - x0) * dy != (y - y0) * dx) {
        // 하나라도 만족하지 않으면 false 반환
        return false;
      }
    }

    // 모든 점이 일직선 상에 있으면 true 반환
    return true;
  }
}
