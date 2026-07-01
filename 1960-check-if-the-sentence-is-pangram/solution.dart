class Solution {
  bool checkIfPangram(String sentence) {
    Set<String> set = {};
    for (int i = 0; i < sentence.length; i++) {
      set.add(sentence[i]);
    }
    return set.length >= 26;
  }
}
