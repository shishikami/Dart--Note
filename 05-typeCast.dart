void main() {
  // 1.Number 和 String
  // toString()
  // int.parse()
  String str = '123';
  var myNum = int.parse(str);
  print(myNum);

  // double.parse() 更好一些

  // 当str为空时会报错
  // 改为：
  try {
    String str2 = "";
    var mNum = double.parse(str2);
    print(mNum);
  } catch (err) {
    print(err);
  }

  // 2. 其他类型转换为boolean
  var str3 = "";
  if (str3.isEmpty) {
    print("NULL");
  }
  // isNaN();
}
