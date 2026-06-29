class Solution {
  int calPoints(List<String> operations) {
    List<int> records = [];
    for (int i = 0; i < operations.length; i++) {
      if (int.tryParse(operations[i]) != null) {
        records.add(int.parse(operations[i]));
      } else if (operations[i] == 'C') {
        records.removeLast();
      } else if (operations[i] == '+') {
        records.add(records[records.length - 1] + records[records.length - 2]);
      } else if (operations[i] == 'D') {
        records.add(records[records.length - 1] * 2);
      }
    }
    int sum = 0;
    for (int i = 0; i < records.length; i++) {
      sum += records[i];
    }
    return sum;
  }
}
