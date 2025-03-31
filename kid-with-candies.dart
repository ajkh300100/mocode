class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    //배열을 순회하며 가장 많은 사탕의 갯수 찾기
    int maxCandies = candies.reduce((a, b) => a > b ? a:b);
    //extraCandies를 추가한 배열을 새로만들기
    List<bool> result = List.filled(candies.length, false);
    //새로운 배열중 가장많은 사탕의 갯수가 되는지 확인한 결과를 출력하기
    for (int i = 0; i < candies.length; i++) {
      if (candies[i] + extraCandies >= maxCandies) {
        result[i] = true;
  }
}
return result;
  }
}