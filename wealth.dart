class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int maxWealth = 0;
    //각 고객별 자산의 총합을 구한다
    //자산의 합을 구하는것을 반복한다.
    for (var customer in accounts) {
    int customerWealth = customer.reduce((a, b) => a + b);
    maxWealth = maxWealth > customerWealth ? maxWealth : customerWealth;
  }
    //그중 최대자산이 갱신될때마다 저장한다.
    //저장된 최대자산을 반환한다.
    return maxWealth;
  }
}