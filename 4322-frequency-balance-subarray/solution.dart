class Solution {
  int getLength(List<int> nums) {
       int n = nums.length;
    int best = 1;

    for (int i = 0; i < n; i++) {
      Map<int, int> freq = {};
      Map<int, int> freqCount = {};
      int distinct = 0;

      for (int j = i; j < n; j++) {
        int val = nums[j];

        if (freq.containsKey(val)) {
          int old = freq[val]!;
          freqCount[old] = freqCount[old]! - 1;
          if (freqCount[old] == 0) freqCount.remove(old);
        } else {
          distinct++;
        }

        freq[val] = (freq[val] ?? 0) + 1;
        int newF = freq[val]!;
        freqCount[newF] = (freqCount[newF] ?? 0) + 1;

        if (distinct == 1) {
          best = best > (j - i + 1) ? best : (j - i + 1);
          continue;
        }

        if (freqCount.length == 2) {
          List<int> keys = freqCount.keys.toList()..sort();
          int lo = keys[0];
          int hi = keys[1];
          if (hi == lo * 2) {
            int len = j - i + 1;
            best = best > len ? best : len;
          }
        }
      }
    }

    return best;
   
  }
}
