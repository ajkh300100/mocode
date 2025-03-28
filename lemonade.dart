class Solution {
  bool lemonadeChange(List<int> bills) {
    int change = 0;
    //bills 배열에서 레모네이드의 가격인 5만큼 뺀다.
    for (int i = 0; i < bills.length; i++) {
        int cost = bills[i] - 5;
        //보유금액보다 지불해야할 금액이 커진다면 false를 반환한다.
        if (cost > change) 
        return false;
        change += 5; //보유금액에 추가하기
        change -= cost; //보유금액에서 지불하기
    }
    //배열의 끝까지 계산이 끝나면 true를 반환한다.
    return true;
      }
}