class Solution {
  int maxArea(List<int> height) {
    // 가장 왼쪽과 오른쪽의 포인터 설정
    int left = 0;
    int right = height.length - 1;
    // 최대 용량을 저장할 변수 초기화
    int maxArea = 0;
    // 왼쪽과 오른쪽 포인터가 만날 때까지 반복
    while (left < right) {
      // 현재 왼쪽과 오른쪽 높이 중 더 낮은 높이를 선택
      int h = height[left] < height[right] ? height[left] : height[right];
      // 두 포인터 사이의 거리(너비)를 계산
      int width = right - left;
      // 현재 높이와 너비를 곱하여 용량 계산
      int area = h * width;
      // 기존 최대 용량과 비교하여 더 크면 갱신
      if (area > maxArea) {
        maxArea = area;
      }
      // 더 낮은 쪽의 포인터를 안쪽으로 이동시켜 다음 조합을 탐색
      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }
    // 최대 용량 반환
    return maxArea;
  }
}
