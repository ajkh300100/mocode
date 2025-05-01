class Solution {
  String decodeString(String s) {
    // 문자들을 저장할 스택
    List<String> stack = [];

    // 문자열을 왼쪽부터 한 글자씩 순회
    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      if (char != ']') {
        // ']'이 아닌 문자 (숫자, 문자, '[')는 그냥 스택에 넣음
        stack.add(char);
      } else {
        // ']'를 만났을 때, 스택에서 '[' 전까지 문자열을 추출
        String decodedString = '';
        while (stack.isNotEmpty && stack.last != '[') {
          decodedString = stack.removeLast() + decodedString;
        }

        // '[' 제거
        stack.removeLast();

        // 숫자를 추출 (2자리 이상일 수도 있음)
        String numberStr = '';
        while (stack.isNotEmpty && RegExp(r'\d').hasMatch(stack.last)) {
          numberStr = stack.removeLast() + numberStr;
        }

        // 숫자를 정수로 변환
        int repeatCount = int.parse(numberStr);

        // 추출한 문자열을 repeatCount 만큼 반복
        String expanded = decodedString * repeatCount;

        // 다시 스택에 문자 하나씩 넣음
        for (var ch in expanded.split('')) {
          stack.add(ch);
        }
      }
    }
    
    // 스택에 남은 문자들을 합쳐서 최종 결과 반환
    return stack.join('');
  }
}