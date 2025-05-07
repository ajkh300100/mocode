class Solution {
  int longestSubarray(List<int> nums) {
    int left = 0;           // 윈도우의 왼쪽 포인터
    int right = 0;          // 윈도우의 오른쪽 포인터
    int zeroCount = 0;      // 현재 윈도우에 포함된 0의 개수
    int maxLength = 0;      // 결과로 반환할 최대 길이

    while (right < nums.length) {
      // 현재 값이 0이면 zeroCount 증가
      if (nums[right] == 0) {
        zeroCount++;
      }

      // zeroCount가 1보다 크면 왼쪽 포인터를 이동시켜 윈도우 축소
      while (zeroCount > 1) {
        if (nums[left] == 0) {
          zeroCount--;
        }
        left++; // 왼쪽 포인터 이동
      }

      // 삭제할 수 있는 요소가 반드시 하나 있어야 하므로,
      // 현재 윈도우 길이에서 -1 한 값을 최대값으로 갱신
      maxLength = maxLength > (right - left) ? maxLength : (right - left);
      
      // 오른쪽 포인터 이동
      right++;
    }

    return maxLength;
  }
}