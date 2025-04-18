class Solution {
  String reverseWords(String s) {
    // 문자열의 앞뒤 공백 제거
    s = s.trim();

    // 공백을 기준으로 단어 나누기 (여러 공백도 하나로 인식)
    List<String> words = s.split(RegExp(r'\s+'));

    // 단어들의 순서 뒤집기
    List<String> reverseWords = words.reversed.toList();

    // 단어들을 공백으로 연결하여 하나의 문자열 생성
    String result = reverseWords.join(' ');

    // 결과값 반환하기
    return result;
  }
}