class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int> new1 = [];
    for (int x = 0; x < m; x++) {
      new1.add(nums1[x]);
    }
    new1 = new1 + nums2;
    int temp = 0;
    for (int i = 0; i < new1.length; i++) {
      for (int j = 0; j < new1.length - i - 1; j++) {
        if (new1[j] > new1[j + 1]) {
          temp = new1[j + 1];
          new1[j + 1] = new1[j];
          new1[j] = temp;
        }
      }
    }
    for (int i = 0; i < new1.length; i++) {
  nums1[i] = new1[i];
}
  }
}

