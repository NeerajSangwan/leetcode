class Solution {
  List<String> fizzBuzz(int n) {
    return List.generate(n, (i) {
      int val = i + 1;
      if (val % 3 == 0 && val % 5 == 0) return "FizzBuzz";
      if (val % 3 == 0) return "Fizz";
      if (val % 5 == 0) return "Buzz";
      return val.toString();
    });
  }
}
