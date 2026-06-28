class Solution {
  void rotate(List<int> nums, int k) {
    k %= nums.length;
    int right = nums.length - 1;
    int temp = 0;
    //reversal 1:
    for (int i = 0; i < nums.length ~/ 2; i++) {
      temp = nums[i];
      nums[i] = nums[right];
      nums[right] = temp;
      right--;
    }

    //reversal 2:
    right = k - 1;
    for (int i = 0; i < k ~/ 2; i++) {
      temp = nums[right];
      nums[right] = nums[i];
      nums[i] = temp;
      right--;
    }
    //reversal 3:
    int left = k;
    right = nums.length - 1;
    for (int i = 0; i < (nums.length - k) ~/ 2; i++) {
      temp = nums[left];
      nums[left] = nums[right];
      nums[right] = temp;
      left++;
      right--;
    }
    print(nums);
  }
}
