// 抽象类
// 主要用来定义标准 子类可以继承抽象类，也可以实现抽象类接口
// 通过abstract关键字定义
// 抽象方法不能用abstract声明 没有方法体的方法称为抽象方法
// 如果子类继承抽象类必须实现抽象方法
// 如果把抽象类当作接口实现的话必须实现抽象类里面定义的所有属性和方法
// 抽象类不能实例化

// implements 和 extends抽象类的区别
// 如果要复用抽象类里面的方法 并且要用抽象方法约束类的话使用extends继承抽象类
// 如果只是把抽象类作为标准的话使用implements

abstract class Animal {
  // 抽象方法
  eat();
  run();
}

class Dog extends Animal {
  @override
  eat() {
    print("Dog eats");
  }

  @override
  run() {
    print("Dog runs");
  }
}

// 多态
// 子类的指针赋值给父类类型指针 同一个函数调用又不同的执行效果

// dart接口
// 没有interface关键字 使用普通类或者抽象类作为接口被实现
// 使用implements关键字进行实现
// 如果实现的类是普通类 会将普通类属性方法全部覆写一遍
// 因为抽象类可以定义抽象方法 普通类不行
// 一般使用抽象类作为接口

// 一个类可以实现多个接口

void main() {
  Dog d = new Dog();
  d.eat();
  d.run();

  Animal a = new Dog();
  a.eat();
}
