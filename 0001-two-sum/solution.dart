class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> m = {};
    for (int i = 0; i < nums.length; i++) {
      int need = target - nums[i];
      if (m.containsKey(need)) {
        return [i, m[need]!];
      } else {
        m[nums[i]] = i;
      }
    }
    return [-1];
    
  }
}
