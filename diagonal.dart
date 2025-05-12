class Solution {
  int diagonalSum(List<List<int>> mat) {
    // 행렬의 크기 n을 구한다
    int n = mat.length;
    
    // 대각선 원소들의 합을 저장할 sum을 초기화한다
    int sum = 0; 
    
    // 0부터 n-1까지 인덱스를 순회하면서 주대각선과 부대각선의 값을 더한다
    for (int i = 0; i < n; i++) {
      // 주대각선 원소를 sum에 더한다
      sum += mat[i][i];

      // 부대각선의 원소도 sum에 더한다 (단, 중복되는 경우는 한 번만 더함)
      if (i != n - 1 - i) {
        sum += mat[i][n - 1 - i];
      }
    }
    // 최종 합을 반환한다
    return sum;
  }
}