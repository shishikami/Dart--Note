// 1. String
var str1 = "str";
String str2 = "str";
// 可以用单引号或者双引号定义
// * 可以使用三引号，可以写多行字符串

// 字符串拼接
String str3 = "123";
String str4 = "567";

// void main() {
//   print("$str3$str4");
//   print(str3 + str4);
// }

// 2. 数值类型
// int double
// * 整型可以赋给浮点型
//   浮点型不能给整型

// 运算符 + - * / %

// 3. bool类型
bool flag = true;
// * 只能是true或者false
//   其余的报错

// 条件判断语句
var f = true;
// void main() {
//   if (f) {
//     print(123);
//   }
// }

// 4. List 数组/集合
void main() {
  // (1)
  var l1 = ["zs", 123];

  int len = l1.length;
  print(len);
  print(l1[0]);

  // (2)指定类型
  var l2 = <String>["zs", "ls", "ww"];

  // (3) 空list 添加元素
  var l4 = [];
  l4.add("az");
  // 容量可变
  // 可以通过l4.length = 1来修改长度

  // (4)
  // var l5 = new List()
  // 新版本被废弃了

  // 创建一个指定长度的集合
  var l6 = List.filled(5, 0);
  // 不能修改长度 会报错
}

// 5. Map
void func() {
  // (1)
  var person = {
    "name": 'zzh',
    "age": 20,
    "work": ["fw", "bb"],
  };
  print(person);
  print(person["age"]);

  // (2)
  var p = new Map();
  p["name"] = "zzh";
  p["age"] = 20;
}

// * 类型判断
void func2() {
  var str = "String";
  print(str is String);
}

// 6. Runes
// 7. Symbols
// 这两个前期用不到
