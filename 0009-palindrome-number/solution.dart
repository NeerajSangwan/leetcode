class Solution {
  bool isPalindrome(int x) {
    List<String> l = x.toString().split('');
    int right = l.length - 1;
    String temp = '';
    for (int i = 0; i < l.length ~/ 2; i++) {
      temp = l[right];
      l[right] = l[i];
      l[i] = temp;
      right--;
    }
    return x.toString()==l.join().toString();
  }
}
