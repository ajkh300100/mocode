class Solution {
  bool isAnagram(String s, String t) 
  {
    final sortedS = (s.split('')..sort()).join('');
    final sortedT = (t.split('')..sort()).join('');

    return sortedS == sortedT;
  }
}