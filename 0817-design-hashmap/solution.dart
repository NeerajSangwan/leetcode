class MyHashMap {
  Map<int,int> m = {};
  MyHashMap() {
  }
  void put(int key, int value) {
        m[key] = value;
    }
  int get(int key) {
    if(m.containsKey(key)){
        return m[key]!;
    }else{
        return -1;
    }
  }
  void remove(int key) {
    m.remove(key);
  }
}


