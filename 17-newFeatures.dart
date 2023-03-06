/**
null safety 空安全
避免一些日常开发中很难被发现的错误 可以改善性能

Flutter 2.2.0之后使用numm safety

? 可空类型

! 类型断言

late关键词 
用于延迟初始化

required关键词
内置修饰符
主要用于允许根据需要标记任何命名参数(函数或类)
使他们不为空 因为可选参数中必须有个required
 */

String? getData() {
  return null;
}

void printLength(String? str) {
  try {
    print(str!.length);
  } catch (e) {
    print(e);
  }
}

// age ss必须传入
void info(String s, {required int age, required String ss}) {}

void main() {
  int a = 123; //非空int类型
  // a = null;

  String? username = 'zs';
  username = null;
  // ? 表示可空类型 允许null

  // String? str = "str";
  // str = null;
  // print(str!.length);
  // 类型断言 str非空打印长度
  // 如果等于空 抛出异常
  printLength(null);
}
