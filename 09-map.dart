void main() {
  // Map(映射) 无序键值对
  // 常用属性：
  // keys       获取所有key
  // values     获取所有value
  // isEmpty    是否为空
  // isNotEmpty

  // 常用方法：
  // remove         删除指定key的数据
  // addAll({...})  合并映射
  // containsValue  查看映射内的值 返回true/false
  // forEach
  // map
  // where
  // any
  // every

  var person = {"name": "zs", "age": 20};

  var person1 = new Map();
  person1["name"] = "ls";
  print(person);
  print(person1);

  // 获取key
  print(person.keys.toList());
  // print(person.keys)
  // print(person.values);

  person.addAll({
    "work": ['coding', 'typing'],
    "height": 299
  });
  print(person);

  person.remove("height");
  print(person);
}
