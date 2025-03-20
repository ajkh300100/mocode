class Solution {
int calPoints(List<String> ops) {
  List<int> record = [];

  for (String op in ops) {
    if (op == "C") {
      if (record.isNotEmpty) {
        record.removeLast();
      }
    } else if (op == "D") {
      if (record.isNotEmpty) {
        record.add(record.last * 2);
      }
    } else if (op == "+") {
      if (record.length >= 2) {
        record.add(record[record.length - 1] + record[record.length - 2]);
      }
    } else {
      // 숫자인 경우
      record.add(int.parse(op));
    }
  }

  return record.fold(0, (sum, score) => sum + score);
}
}