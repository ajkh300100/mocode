class Solution {
  int pivotIndex(List<int> nums) {
    //배열의 합 구하기
    int total = nums.reduce((a, b) => a + b);
    //왼쪽의 누적 합계를 저장할 변수 초기화
    int leftSum = 0;
    //배열을 순회하며 피벗 인덱스 찾기
    for (int i =0; i < nums.length; i++) {
        if (leftSum * 2 + nums[i] == total) {
            return i;
        }
        leftSum += nums[i];
    }
    //피벗 인덱스를 못찾으면 -1반환
    return -1;
  }
}