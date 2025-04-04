class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int sum = 0;
    // 첫 번째 k의 합 계산
    for (int i = 0; i < k; i++) {
      sum += nums[i];
    }

    int maxSum = sum; // 최대 합을 초기화

    // 최대합 계산
    for (int i = k; i < nums.length; i++) {
      sum = sum - nums[i - k] + nums[i];
      maxSum = max(maxSum, sum);
    }

    // 평균값 반환
    return maxSum / k;
  }
}