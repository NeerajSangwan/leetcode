class MyHashSet {
    Set<int> s = {};
  MyHashSet() {
  }
  void add(int key) {
    s.add(key);
  }
  void remove(int key) {
    s.remove(key);
  }
  bool contains(int key) {
   if(s.contains(key)){
    return true;
   }else{
    return false;
   }
  }
}

