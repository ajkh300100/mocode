class Solution {
  int singleNumber(List<int> nums) {
    // XOR 연산 결과를 저장할 변수 초기화
    int result = 0;
    // 모든 숫자에 대해 XOR 연산 수행
    for (int num in nums) {
        result ^=num;
    }
    return result;
  }
}