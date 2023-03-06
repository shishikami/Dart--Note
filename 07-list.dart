// List属性 方法
void main() {
  // 属性：
  // 1.length     长度
  // 2.reversed   翻转
  // 3.isEmpty    是否为空
  // 4.isNotEmpty 是否不为空
  // 方法：
  // 1.add                      增加
  // 2.addAll                   拼接数组
  // 3.indexOf                  查找 传入具体值
  // 4.remove                   删除 传入具体值
  // 5.removeAt                 删除 传入索引值
  // 6.fillRange                修改
  // 7.insert(index, value);    指定位置插入
  // 8.insertAll(index, list);  指定位置插入list
  // 9.toList()                 其他类型转换为list
  // 10.join()                  List转换为字符串
  // 11.split()                 字符串转换为List
  // 12.forEach
  // 13.map
  List myList = <String>["str1", "str2"];
  print(myList.length);
  print(myList.isEmpty);
  // print(myList.isNotEmpty);

  // 对列表倒序排序
  print(myList.reversed);
  // 可以倒置数组
  var newList = myList.reversed.toList();

  // final numbers = <int>[1, 2, 3];
  // numbers.addAll([4, 5, 6]);
  // print(numbers);

  var myList2 = <String>[];
  // 增加多个数据
  myList2.add("str1");
  print(myList2);
  myList2.addAll(['str3', 'str2']);
  print(myList2);
  // 该方法主要功能在于拼接数组

  // 查找
  print(myList2.indexOf("str2"));
  // 查找不到返回-1

  myList2.fillRange(1, 2, "aaaa");
  print(myList2);

  // 插入数据 一个或者多个
  myList2.insert(0, "bbbb");
  print(myList2);
  myList2.insertAll(1, ["cccc", "dddd"]);
  print(myList2);

  // 转换成字符串
  print(myList2.join(','));

  // 字符串转数组
  var str = "str1,str2,str3";
  var list = str.split(',');
  print(list);
  // print(list is List);

  // 循环
  // 1.
  for (var i = 0; i < myList2.length; ++i) {
    // ...
  }
  // 2.
  for (var item in myList2) {
    // ..
  }
  // 3.
  myList2.forEach((element) {
    // print(element);
  });
  // 4.
  var newMyList = myList2.map((value) {
    return value + "Map()";
  });
  print(newMyList);

  // 5.
  var list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var newlist2 = list2.where((value) {
    return value > 5;
  });
  print(newlist2);

  // 6.
  // any 有一个满足就返回true
  var f1 = list2.any((value) {
    return value > 8;
  });
  print(f1);

  // 7.
  // every 每一个都满足条件
  var f2 = list2.every((value) {
    return value > 8;
  });
  print(f2);

  // forEach 和 map 比较常用
  // 对Map Set同样使用
}
