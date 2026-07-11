class Solution {
  bool isAnagram(String s, String t) {
    Map<String,int> m = {};
    if(s.length!=t.length){
        return false;
    }
    for(int i=0;i<s.length;i++){
        if(m.containsKey(s[i])){
            m[s[i]]  = m[s[i]]! +1;
        }else{
            m[s[i]] = 1;
        }
    }
    for(int i=0;i<t.length;i++){
        if(m.containsKey(t[i])){
            m[t[i]] = m[t[i]]! -1;
        }else{
            return false;
        }
    }
    for(var entry in m.entries){
        if(entry.value!=0){
           return false;
        }
    }
    return true;
  }
}
