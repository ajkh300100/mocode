class Solution {
  int largestPerimeter(List<int> nums) {
    //배열을 내림차순으로 정렬
    nums.sort((a, b) => b.compareTo(a));
    //가장 큰변부터 순차적으로 검사
    for (int i = 0; i < nums.length - 2; i++) {
    int a = nums[i];     // 첫 번째 변
    int b = nums[i + 1]; // 두 번째 변
    int c = nums[i + 2]; // 세 번째 변
    //삼각형의 조건확인
    if (a < b + c) {
    //만족하면 둘레를 반환하고 그렇지 않으면 0을 반환
    return a + b + c;
    }
    }
    return 0;
  }
}