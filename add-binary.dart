class Solution {
  String addBinary(String a, String b) {
    //결과를 저장할 StringBuffer 생성
    StringBuffer result = StringBuffer();
    //두 문자열의 끝에서 부터 시작할 인덱스 설정
    int i = a.length - 1;
    int j = b.length - 1;
    //올림수 초기화
    int carry = 0;
    //올림수가 없을때까지 반복
    while (i >= 0 || j >= 0 || carry > 0) {
        //현재 자리 숫자를 가져오고 없으면 0으로 처리한다
        int bitA = i >= 0? int.parse(a[i]) : 0;
        int bitB = j >= 0? int.parse(b[j]) : 0;
        //현재 자리숫자와 carry더하기
         int sum = bitA + bitB + carry;
    //결과에 현재 자리의 이진수 추가 (sum % 2)
    result.write(sum % 2);
    //다음 자리로 넘길 carry 계산 (sum / 2)
    carry = sum ~/ 2;
    //인덱스 이동
    i--;
    j--;
  }
  //StringBuffer는 뒤에서부터 썼으므로, 결과를 뒤집어 반환
  return result.toString().split('').reversed.join('');
  }
}