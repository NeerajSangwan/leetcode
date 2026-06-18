class Solution {
  bool isValid(String s) {
    s = s.trim();
    if (s.length % 2 != 0 || s.isEmpty) {
      return false;
    }
    List<String> stack1 = [];
    List<String> stack2 = [];

    for (int i = 0; i < s.length; i++) {
      if (RegExp(r'[({\[]').hasMatch(s[i])) {
        stack1.add(s[i]);
      }
      if (RegExp(r'[)}\]]').hasMatch(s[i])) {
        stack2.add(s[i]);
        if (stack1.isEmpty) {
          return false;
        }
        if (s[i] == ')' && stack1.last == '(' ||
            s[i] == '}' && stack1.last == '{' ||
            s[i] == ']' && stack1.last == '[') {
          stack1.removeLast();
          stack2.removeLast();
        } else {
          return false;
        }
      }
    }
    return stack1.isEmpty;
  }
}
