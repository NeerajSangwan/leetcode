class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> seen = {};

    for (int i = 0; i < nums.length; i++) {
      int needed = target - nums[i];

      if (seen.containsKey(needed)) {
        return [seen[needed]!, i];
      }

      seen[nums[i]] = i;
    }

    return [];
  }
}
