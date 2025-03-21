class Solution {
  int strStr(String haystack, String needle) {
    //haystack에 needle이 포함되는지 찾기
    for(int i=0; i<haystack.length; i++) {
        return haystack.indexOf(needle);
    }
    return -1;
  }
    //포함된다면 0 아니라면 -1을 반환하기
}