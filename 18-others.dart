// dart:core 中的 identical函数

// bool identical(Object? a,Object b)
// 检查两个引用是否指向同一个对象

/**
常量构造函数
1、常量构造函数以const关键字修饰
2. const构造函数必须用于成员变量都是final的类
3. 如果实例化时不加const 即使调用的是常量构造函数 实例化对象也不是常量实例
3. 实例化常量构造函数的时候，多个地方创建的这个对象如果传入值相同 只保留一个对象
5. Flutter中的const修饰不仅仅是节省组件构建是的开销，Flutter在需要重新构建组件时不构件const组件 
 */

// 常量构造函数
class Container {
  final int width;
  final int height;
  // 构造函数一定要加const
  const Container({required this.width, required this.height});
}

void main() {
  var o1 = new Object();
  var o2 = new Object();

  print(identical(o1, o2));
  print(identical(o1, o1)); //true

  var o3 = const Object();
  var o4 = const Object();
  print(identical(o3, o4));
  // const关键词在多个地方创建 相同的对象 的时候，内存中只保留一个对象

  var c1 = Container(width: 100, height: 100);
  var c2 = Container(width: 100, height: 100);
  // 传入值必须一样
  const c3 = Container(width: 100, height: 100);
  const c4 = Container(width: 100, height: 100);
  print(identical(c1, c2));
  print(identical(c3, c4));
}
