class Solution {
  bool uniqueOccurrences(List<int> arr) {
    //각 숫자의 등장빈도를 저장할 맵생성
    Map<int, int> freqMap = {};
    //배열을 순회하며 숫자의 빈도 계산
    for (int num in arr) {
        freqMap[num] = (freqMap[num] ?? 0) + 1;
    }
    //계산한 빈도를 저장할 set생성
      Set<int> freqSet = {};
      for (int freq in freqMap.values) {
        if (freqSet.contains(freq)) {
    //중복된다면 고유한 빈도가 아니므로 false 출력
    return false;
        }
        freqSet.add(freq);
      }

    //모든 빈도가 고유하면 true 출력
    return true;
  }
}