class Solution {
  bool closeStrings(String word1, String word2) {
    //길이가 다르면 false
    if (word1.length != word2.length) {
        return false;
    }
    //각 문자열의 빈도를 계산
    Map<String, int> freq1 = {};
    Map<String, int> freq2 = {};
    for (int i = 0; i < word1.length; i++) {
      freq1[word1[i]] = (freq1[word1[i]] ?? 0) + 1;
    }
    for (int i = 0; i < word2.length; i++) {
      freq2[word2[i]] = (freq2[word2[i]] ?? 0) + 1;
    }
    //두 문자열 문자종류가 같은지 확인
    if (freq1.keys.toSet().difference(freq2.keys.toSet()).isNotEmpty ||
        freq2.keys.toSet().difference(freq1.keys.toSet()).isNotEmpty) {
      return false;
    }
    //각 문자의 빈도 리스트를 정렬해서 비교
    List<int> list1 = freq1.values.toList()..sort();
    List<int> list2 = freq2.values.toList()..sort();

    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }
    //모든조건을 만족하면 true 출력
    return true;
  }
}