class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int n = nums.length;
    //결과를 저장할 리스트 전부 1로 초기화
    List<int> result = List.filled(n, 1);
    //왼쪽에서 오는 곱 계산
    int leftProduct = 1;
    for (int i = 0; i < n; i++) {
      result[i] = leftProduct;       // 현재까지 왼쪽에 있는 값들의 곱 저장
      leftProduct *= nums[i];        // 다음 위치를 위해 현재 값을 곱함
    }
    //오른쪽에서 오는 곱 계산후 곱하기
    int rightProduct = 1;
    for (int i = n - 1; i >= 0; i--) {
      result[i] *= rightProduct;     // 오른쪽 곱과 기존 왼쪽 곱을 곱함
      rightProduct *= nums[i];       // 다음 위치를 위해 현재 값을 곱함
    }
    return result;
  }
}