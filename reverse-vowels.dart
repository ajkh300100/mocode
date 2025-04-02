class Solution {
  String reverseVowels(String s) {
    //모음 리스트 (a, e, i, o, u, A, E, I, O, U)
    Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
    //문자열을 리스트로 변환
    List<String> chars = s.split('');
    //포인터 설정
    int left = 0;
    int right = chars.length - 1;
    while (left < right) {
    // 왼쪽 포인터가 모음이 아닐 경우 오른쪽으로 이동
    while (left < right && !vowels.contains(chars[left])) {
      left++;
    }
    // 오른쪽 포인터가 모음이 아닐 경우 왼쪽으로 이동
    while (left < right && !vowels.contains(chars[right])) {
      right--;
    }
    // 모음인 두 문자를 교환
    if (left < right) {
      String temp = chars[left];
      chars[left] = chars[right];
      chars[right] = temp;

      // 포인터 이동
      left++;
      right--;
    }
  }

  // 리스트를 다시 문자열로 변환하여 반환
  return chars.join('');
}

void main() {
  print(reverseVowels("hello")); // "holle"
  print(reverseVowels("leetcode")); // "leotcede"
}
}