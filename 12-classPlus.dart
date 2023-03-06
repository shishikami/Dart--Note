// 静态成员
// static 实现类级别的变量和函数
// 静态方法不能访问非静态成员 只能访问静态成员
// 非静态方法 可以访问静态、非静态成员

class Person {
  static String name = 'zs';
  static int age = 20;

  late String n_name;
  late int n_age;

  Person(this.n_name, this.n_age);

  Person.init() {
    this.n_age = 0;
    this.n_name = "";
  }

  static void show() {
    print(name);
  }

  void say() {
    print("say() called");
  }
}

// 非静态成员推荐使用this.varName
// 静态成员直接用varName

// 对象操作符
// ？ 条件运算符
// as 类型转换
//    e.g. (p as Person).say();
// is 类型判断
// .. 级联操作（连缀）

// 类的继承
// extends
// 子类继承父类的可见的属性和方法 不会继承构造函数
// 子类可以复写父类的方法
class Animal {
  // String name = "animal";
  // int age = 1;
  String? name;
  int? age;
  Animal(this.name, this.age);
  Animal.xxx() {
    this.name = "zs";
    this.age = 2;
  }
  void printInfo() {
    print("${this.name} ${this.age}");
  }

  void drink() {
    print("drinking");
  }
}

class Dog extends Animal {
  late String sex;
  Dog(String s, int n, String ss) : super(s, n) {
    this.sex = ss;
  }

// @override可写可不写 建议写上
  @override
  void printInfo() {
    print("${this.name} ${this.age} ${this.sex}");
  }

  void eat() {
    print("eating");
    super.drink();
  }
}

main() {
  var p = new Person("zs", 0);
  // 不能通过实例对象访问
  // p.show();

  Person pp;
  Person ppp = new Person("zs", 20);
  ppp.say();
  // pp此时为空对象
  // pp?.say();

  pp = new Person.init();
  pp
    ..n_age = 20
    ..n_name = "ls"
    ..say();

  Person.show();

  Animal ani = new Animal.xxx();
  ani.printInfo();

  Dog dog = new Dog('zs', 1, 'n');
  dog.printInfo();
  dog.eat();

  // var obj;
  // print(obj?.length);
}
