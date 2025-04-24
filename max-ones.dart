class Solution {
  int longestOnes(List<int> nums, int k) {
    int left =0;
    int maxLength = 0;
    int zeroCount = 0;
    //오른쪽 포인터를 하나씩 이동하면서 전체 배열을 순회
    for (int right = 0; right < nums.length; right++) {
        //현재 요소가 0이라면 zeroCount 증가
      if (nums[right] == 0) {
        zeroCount++;
    }
    //만약 0의 개수가 k를 초과하면 윈도우를 줄이기 위해 왼쪽 포인터 이동
      while (zeroCount > k) {
        if (nums[left] == 0) {
    //윈도우에서 0 하나 제거
        zeroCount--;
        }
    //왼쪽 포인터를 오른쪽으로 이동
        left++;
      }
      //현재 윈도우 크기와 기존 maxLength 중 큰 값을 저장
      maxLength = maxLength > (right - left + 1) ? maxLength : (right - left + 1);
  }
  return maxLength;
  }
}