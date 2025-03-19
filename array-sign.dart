class Solution {
int arraySign(List<int> nums) {
  int sign = 1;

  for (int num in nums) {
    if (num == 0) return 0;
    if (num < 0) sign *= -1;
  }

  return sign;
}
}