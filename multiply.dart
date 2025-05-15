class Solution {
  String multiply(String num1, String num2) {
    // 예외 처리: 두 숫자 중 하나라도 "0"이면 결과는 "0"
    if (num1 == "0" || num2 == "0") return "0";

    // 결과를 저장할 배열 초기화 (최대 길이 = num1.length + num2.length)
    List<int> result = List.filled(num1.length + num2.length, 0);

    // num1, num2의 뒤쪽(일의 자리)부터 순회
    for (int i = num1.length - 1; i >= 0; i--) {
      int n1 = int.parse(num1[i]);

      for (int j = num2.length - 1; j >= 0; j--) {
        int n2 = int.parse(num2[j]);

        // 두 자리 숫자를 곱함
        int mul = n1 * n2;

        // 결과 배열의 인덱스 위치 계산
        int p1 = i + j;
        int p2 = i + j + 1;

        // 이전 값과 곱셈 결과를 더함
        int sum = mul + result[p2];

        // 현재 자릿수 저장 (1의 자리)
        result[p2] = sum % 10;

        // 앞 자릿수에 올림 저장 (10의 자리)
        result[p1] += sum ~/ 10;
      }
    }

    // 결과 배열을 문자열로 변환
    StringBuffer sb = StringBuffer();

    for (int num in result) {
      // 앞쪽 0은 생략
      if (sb.isEmpty && num == 0) continue;
      sb.write(num);
    }

    // 결과 반환
    return sb.toString();
  }
}