class Solution {
  String removeStars(String s) {
    // 결과를 담을 리스트 생성
    List<String> stack = [];
    // 문자열을 앞에서부터 한 글자씩 확인
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
    // 만약 현재 문자가 '*'이면 스택에서 마지막 문자를 제거
      if (char == '*') {
        if (stack.isNotEmpty) {
          stack.removeLast();
        }
      } else {
    // 일반 문자라면 스택에 추가
        stack.add(char);
      }
    }
    // 반복문이 모두 끝난 후, 리스트의 남은 문자들을 합쳐 최종 문자열 반환
    return stack.join();
  }
}