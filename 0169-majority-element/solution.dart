class Solution {
  int majorityElement(List<int> nums) {
    int max = 0;
    int highest = 0;
    Map<int, int> m = {};
    for (int i = 0; i < nums.length; i++) {
      if (m.containsKey(nums[i])) {
        m[nums[i]] = m[nums[i]]! + 1;
      } else {
        m[nums[i]] = 1;
      }
    }
    for (var entry in m.entries) {
      if (entry.value > max) {
        max = entry.value;
        highest = entry.key;
        
      }
      
    }
    return highest;
  }
}

