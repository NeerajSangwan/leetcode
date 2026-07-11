class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int,int> m = {};
    for(int i=0;i<nums.length;i++){
        if(m.containsKey(nums[i])){
            return true;
        }else{
            m[nums[i]] = 1;
        }
    }
    return false;
  }
}
