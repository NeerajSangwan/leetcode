class Solution {
  int thirdMax(List<int> nums) {
    int largest = nums[0];
    int secondlargest = -(1 << 63);
    int thirdlargest = -(1 << 63);
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > largest) {
        thirdlargest = secondlargest;
        secondlargest = largest;
        largest = nums[i];
      } else if (nums[i] > secondlargest && nums[i] != largest) {
        thirdlargest = secondlargest;
        secondlargest = nums[i];
      } else if (nums[i] > thirdlargest &&
          nums[i] != secondlargest &&
          nums[i] != largest) {
        thirdlargest = nums[i];
      }
    }
    return thirdlargest==-(1<<63)? largest : thirdlargest;
  }
}


