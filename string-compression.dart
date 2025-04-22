class Solution {
  int compress(List<String> chars) {
    //압축결과를 저장할 위치를 초기화
    int write = 0;
    //문자를 읽을 위치를 초기화
    int read = 0;
    //배열의 끝까지 반복
    while (read < chars.length) {
    //현재 그룹의 문자 저장
    String currentChar = chars[read];
    int count = 0;
    //같은 문자가 나오면 카운트 증가
    while (read < chars.length && chars[read] == currentChar) {
        read++;
        count++;
    }
    //문자 자체를 write 위치에 기록하고 write 증가
    chars[write] = currentChar;
    write++;
    //count가 1보다 크면 숫자를 문자열로 변환하여 하나씩 기록
    if (count > 1) {
        for (String digit in count.toString().split('')) {
            chars[write] = digit;
            write++;
        }
    }
    }
    //압축후 배열의 길이 반환
    return write;
  }
}