class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    // 결과를 저장할 리스트
    List<int> result = [];

    // 행과 열의 범위를 나타내는 변수 설정
    int top = 0;
    int bottom = matrix.length - 1;
    int left = 0;
    int right = matrix[0].length - 1;

    // 나선형 순서로 순회할 때까지 반복
    while (top <= bottom && left <= right) {
      // 위쪽 행을 왼쪽에서 오른쪽으로 이동
      for (int i = left; i <= right; i++) {
        result.add(matrix[top][i]);
      }
      top++;

      // 오른쪽 열을 위에서 아래로 이동
      for (int i = top; i <= bottom; i++) {
        result.add(matrix[i][right]);
      }
      right--;

      // 아래쪽 행을 오른쪽에서 왼쪽으로 이동
      if (top <= bottom) {
        for (int i = right; i >= left; i--) {
          result.add(matrix[bottom][i]);
        }
        bottom--;
      }

      // 왼쪽 열을 아래에서 위쪽으로 이동
      if (left <= right) {
        for (int i = bottom; i >= top; i--) {
          result.add(matrix[i][left]);
        }
        left++;
      }
    }

    // 결과 반환
    return result;
  }
}
