class Solution {
  bool isSubsequence(String s, String t) {
    int i =0, j = 0;
    //문자열 t를 순회하며 문자열 s의 모든 문자가 존재하는지 확인
    while (j < t.length) {
        if (i < s.length && s[i] == t[j]) {
            i++;
        }
        j++;
    }
    //모든문자가 존재한다면 true 아니라면 false를 출력
    return i == s.length;
  }
  void main() {
    print(isSubsequence("abc", "ahbgdc")); //true
    print(isSubsequence("axc", "ahbgdc")); //false
  }
}