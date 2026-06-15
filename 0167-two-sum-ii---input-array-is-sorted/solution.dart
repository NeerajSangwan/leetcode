class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    
    Map<int, int> m = {};
    for (int i = 0; i < numbers.length; i++) {
      int need = target - numbers[i];
      if (m.containsKey(need)) {
        return [ m[need]! + 1,i + 1];
      } else {
        m[numbers[i]] = i;
      }
    }
    return [];
    
  }
}
