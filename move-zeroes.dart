class Solution {
  void moveZeroes(List<int> nums) {
    int left = 0;

    // 0이 아닌 값을 앞으로 이동
    for (int right = 0; right < nums.length; right++) {
      if (nums[right] != 0) {
        nums[left] = nums[right];
        left++;
      }
    }

    // 남은 부분을 0으로 채우기
    for (int i = left; i < nums.length; i++) {
      nums[i] = 0;
    }
  }
}
