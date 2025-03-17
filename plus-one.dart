class Solution {
List<int> plusOne(List<int> digits) {
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i]++;
      return digits;
    }
    digits[i] = 0;  // 현재 자리가 9인 경우, 0으로 설정하고 다음 자리로 이동
  }
  
  // 모든 자릿수가 9인 경우 맨 앞에 1 추가
  digits.insert(0, 1);
  return digits;
}
}