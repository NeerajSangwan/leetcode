class Solution {
  bool isPalindrome(String s) {
    s = s.trim().toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), (''));
    int right = s.length - 1;
    for (int i = 0; i < s.length ~/ 2; i++) {
      if (s[i] == s[right]) {
        right--;
      } else {
        return false;
      }
    }
    return true;
  }
}
