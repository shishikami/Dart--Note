// set 去重
void main() {
  var s = new Set();
  s.add(1);
  s.add(2);
  s.add(2);
  print(s);

  // 对list去重
  List list = ['a', 'b', 'c', 'd', 'a', 'c', 'e'];
  var set = new Set();
  set.addAll(list);
  print(set);
  // print(set.toList());
}
