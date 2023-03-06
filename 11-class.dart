// class定义在main外边
class Person {
  String name = "";
  int age = 0;

  // 构造函数
  // 默认构造函数 只能有一个
  // Person(String s, int n) {
  //   this.name = s;
  //   this.age = n;
  // }
  // 简写形式
  Person(this.name, this.age);

  // 命名构造函数 可以有多个
  Person.now() {
    this.name = 'zs';
    this.age = 22;
  }

  void getInfo() {
    print("${this.name} ${this.age}");
  }

  void setInfo(String s, int n) {
    this.name = s;
    this.age = n;
  }
}

// 类的封装
// 抽离成单独文件
// 使用import来导入

// 使用 _ 将属性、方法改为私有的
// 并且该类得单独抽离成一个文件
// e.g. _age
//      void _run()

// get方法
get area {
  return 10;
}
// 类似于计算属性 没有()
// 可以直接用 实例名.area接收

// set
// set Height(int value) {
//   this.hright = height;
// }
// 调用
// 实例名.height = ...

// 初始化列表
// Person():name ='zx',age=20{
//   ...
// }

void main() {
  Person p = new Person('zs', 22);
  p.getInfo();
}
