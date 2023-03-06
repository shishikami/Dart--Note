// mixins 混入
// 在类中加入其他的功能

// Dart本身不能多继承 可以实现多接口
// 使用mixins可以达到类似多继承的功能

/*
Dart2.x中mixins使用条件
作为minxins的类只能继承自Object 不能继承自其他类
作为imixins的类不能有构造函数
一个类可以mixins多个mixins类
mixins不是继承也不是接口 而是全新的特性
 */
class A {
  void printA() {
    print('A');
  }
}

class B {
  void printB() {
    print('B');
  }
}

class C with A, B {}

void main() {
  C c = new C();
  c.printA();
  c.printB();

  // mixins类型
  // 其超类的子类
  // C is A B C
}
