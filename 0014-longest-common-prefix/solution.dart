class Solution {
  String longestCommonPrefix(List<String> strs) {
    
    if (strs.isEmpty) {
      return "";
    }
    String res = '';
    String max = strs[0];
    for (int i = 1; i < strs.length; i++) {
      res = "";
      for (int j = 0; j < strs[i].length && j < max.length; j++) {
        if (strs[i][j] == max[j]) {
          res += strs[i][j];
        } else {
          break;
        }
      }
      max = res;
    }
    return max;
  }
}
