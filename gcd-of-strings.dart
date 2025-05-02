class Solution {
  String gcdOfStrings(String str1, String str2) {
    //두 문자열을 합친값이 다르면 공통으로 반복가능한 문자열이 없음
    if (str1 + str2 != str2 + str1) {
        return "";
    }
    //문자열 길이의 최대공약수를 구하는 내부 함수 정의
    int gcd(int a, int b) {
        while (b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
      }
      return a;
    }
    //두 문자열의 길이의 최대공약수를 구함
    int lenGcd = gcd(str1.length, str2.length);
    //str1의 앞부분 lenGcd 만큼 자르면 반복되는 단위 문자열이 됨
    return str1.substring(0, lenGcd);
  }
}