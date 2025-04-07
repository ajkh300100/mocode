class Solution {
  int largestAltitude(List<int> gain) {
    //고도를 저장할 변수를 각각 초기화
    int current  = 0;
    int maxHeight = 0;
    //리스트를 순회하며 고도변화를 누적
    for (int g in gain){
        current += g;
        if (current  > maxHeight){
            maxHeight = current;
        }
    }
    //모든구간 순회후 최고점 반환
    return maxHeight;
  }
}