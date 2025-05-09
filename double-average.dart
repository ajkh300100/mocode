class Solution {
  double average(List<int> salary) {
    //급여의 최소값과 최대값을 구하기
    int minSalary = salary.reduce((a, b) => a < b ? a : b);
    int maxSalary = salary.reduce((a, b) => a > b ? a : b);
    //모든 급여의 합산된 값을 구한다
    int total = salary.reduce((a, b) => a + b);
    //합산된 급여에서 최소값과 최대값을 제외하고 평균을 계산한다
    int sumSalary = total - (minSalary + maxSalary);
    int count = salary.length - 2;
    double average =  sumSalary / count;
    //결과를 반환한다
    return average;
  }
}