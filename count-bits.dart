class Solution {
  List<int> countBits(int n) {
    //리스트를 0으로 초기화
    List<int> result = List.filled(n + 1, 0);
    //1부터 n까지 순회하면서 각 숫자의 1비트 갯수 계산
    for (int i = 1; i <= n; i++) {
        result[i] = result[i >> 1] + (i & 1);
    }
    //결과값 반환
    return result;
  }
}