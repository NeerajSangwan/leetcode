class Solution {
  bool isAnagram(String s, String t) {
    if(s.length!=t.length){
        return false;
    }
    Map<String,int> m = {};
    for(int i=0;i<s.length;i++){
        if(m.containsKey(s[i])){
            m[s[i]] = m[s[i]]! +1;
        }else{
            m[s[i]] = 1;
        }
    }
    for(int i =0;i<t.length;i++){
        if(m.containsKey(t[i])){
            m[t[i]] = m[t[i]]!-1;
        }else{
            return false;
        }
    }
    for(var num in m.entries){
        if(num.value != 0){
        
            return false;
        }
    }
    return true;
  }
}
