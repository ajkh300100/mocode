class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    // 결과값을 담을 스택을 생성
    List<int> stack = [];

    // 모든 소행성을 순회
    for (int asteroid in asteroids) {
      // 현재 소행성을 stack과 비교 후 충돌 처리할지 결정
      bool exploded = false;

      // 왼쪽으로 이동하는 소행성이며 오른쪽으로 이동하는 경우 충돌 발생 가능
      while (stack.isNotEmpty &&
          stack.last > 0 &&
          asteroid < 0) {
        // 절댓값 비교하며 충돌 정리
        if (stack.last < -asteroid) {
          // 스택 top 소행성이 작으므로 파괴되고 현재 소행성은 계속 진행
          stack.removeLast();
          continue;
        } else if (stack.last == -asteroid) {
          // 같은 크기일 경우 둘 다 파괴
          stack.removeLast();
          exploded = true;
          break;
        } else {
          // 현재 소행성이 더 작으면 파괴됨
          exploded = true;
          break;
        }
      }

      // 충돌하지 않았거나 살아남은 경우 stack에 추가
      if (!exploded) {
        stack.add(asteroid);
      }
    }

    // 충돌이 모두 끝난 후 남은 소행성들을 반환
    return stack;
  }
}