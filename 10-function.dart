// 返回类型 方法名称(参数们){
//   方法体;
//   return 返回值;
// }

// 返回值甚至可以不写

// void main() {
//   return;
// }

// 可选参数
// Type func(Type agr1,[Type] atg2){
//   ..
// }

// 默认参数
// 首先参数得是可选的
void function1([int age = 20]) {
  // ...
  print(age);
}

// 命名参数
void function2(String name, {int age = 0, String work = "coding"}) {
  print("$name $age $work");
}

// 方法当作参数
fn1() {}
fn2(fn) {
  fn();
}

// 匿名方法
var fn3 = () {
  // ...
};

void main() {
  function1(30);
  function1();

  function2("zs", age: 21, work: "摆");

  // 箭头函数
  List list2 = [1, 2, 3];
  list2.forEach((value) => print(value));

  list2.forEach((value) => {print(value)});

  // 匿名方法
  var function3 = () {};

  // 自执行方法
  // 和js差不多
  ((int n) {
    print(n);
  })(20);

  // 方法递归

  // 闭包
  // 全局变量 常驻内存 全局变量污染全局
  // 局部变量 会被垃圾回收机制回收 不会污染全局

  // 实现 常驻内存 且 不污染全局
  // 闭包：函数嵌套函数 内部函数调用外部函数的变量胡哦这参数
  //      该变量或者参数不会被回收
  // 写法 函数嵌套函数 并return里面的函数
}
