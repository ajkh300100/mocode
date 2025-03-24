class Solution {
  int romanToInt(String s) {
    //로마숫자 리스트 만들기
    Map<String, int> romanMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
    };
    int total = 0;
    //문자열을 순회하며 조건을 대입
    //조건을 충족하는 결과값 출력
    for (int i = 0; i < s.length; i++) {
    int current = romanMap[s[i]]!;
    int next = (i + 1 < s.length) ? romanMap[s[i + 1]]! : 0;

    if (current < next) {
      total -= current;
    } else {
      total += current;
    }
  }

  return total;
  }
}