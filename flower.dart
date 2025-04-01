class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int count = 0;
    int length = flowerbed.length;
    
    for (int i = 0; i < length; i++) {
      // 현재 위치(i)가 비어 있어야 함 (0)
      if (flowerbed[i] == 0) {
        // 왼쪽이 비어있는지 확인 (첫 번째 칸이면 왼쪽 없음)
        bool leftEmpty = (i == 0) || (flowerbed[i - 1] == 0);
        
        // 오른쪽이 비어있는지 확인 (마지막 칸이면 오른쪽 없음)
        bool rightEmpty = (i == length - 1) || (flowerbed[i + 1] == 0);
        
        // 왼쪽과 오른쪽이 모두 비어 있다면 꽃을 심을 수 있음
        if (leftEmpty && rightEmpty) {
          flowerbed[i] = 1; // 꽃 심기
          count++; // 심은 꽃 개수 증가
          
          // 만약 n개의 꽃을 모두 심었다면 바로 true 반환
          if (count >= n) {
            return true;
          }
        }
      }
    }
    
    // 최종적으로 심은 꽃의 개수가 목표 n보다 크거나 같으면 true, 아니면 false
    return count >= n;
  }
}
