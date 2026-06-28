class Solution {
  void reverseString(List<String> s) {
    int left = 0;
    int right = s.length - 1;
    String temp = '';
    for (int i = 0; i < s.length ~/2; i++) {
      temp = s[right];
      s[right] = s[left];
      s[left] = temp;
      left++;
      right--;
    }
    print(s);
  }
}

