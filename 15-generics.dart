// 泛型
// 泛型 解决 类 接口 方法的复用性
// 以及对不特定数据类型的支持（类型校验）

// 泛型方法
// 对传入和返回均校验
T getData<T>(T value) {
  return value;
}

// 泛型类
class myList<T> {
  List list = <T>[];
  void add(T value) {
    this.list.add(value);
  }

  List fetList() {
    return list;
  }
}
// 创建的时候不指定类型 则可以插入任何数据
// 指定对应类型：
// myList l2 = new myList<String>();

// 泛型接口
// 1.定义一个泛型接口 约束实现它的子类必须有getByKey(key)
//                  和 setByKey(key,value)s
// 2.要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致

void main() {
  print(getData(21));

  // 指定传入参数的类型
  // print(getData<String>(12));
  print(getData<String>('12'));

  // e.g.
  List list1 = new List<String>.filled(2, "");
  list1[0] = "zs";
  list1[1] = "ls";

  myList l2 = new myList<String>();
}
