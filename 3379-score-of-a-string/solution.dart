class Solution {
  int scoreOfString(String s) {
    int score = 0;
    for (int i = 0; i < s.length - 1; i++) {
      score += (s.codeUnitAt(i) - s.codeUnitAt(i + 1)).abs();
    }
    return score;
  }
}
