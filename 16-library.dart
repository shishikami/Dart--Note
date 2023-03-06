// 使用库通过import指令完成
// library指令可以创建一个库 每个.dart文件就是一个库，即使没有使用library指令

/*
主要有三种库
1.自定义库
2.系统内置库
e.g. import 'dart:math'
     import 'dart:io'
3.Pub包管理系统中的库
(1)可能用到的网址：https://pub.dev/packages
              https://pub.flutter-io.cn/packages
              https://pub.dartlang.org/flutter/
(2)创建一个pubspec.yaml文件 内容如下
name:xxx
description: xxxx.
dependencies:
  http:^0,12,0+2
  date_format:^1.0.6
(3)配置dependencies
(4)运行put get 获取远程库
(5)看文档引入库使用

库的重命名 import '' as xxx

部分导入 只需要导入库的一部分
两种模式:
模式一： 
  只导入需要的部分 使用show关键字
    e.g. import 'xxx.dart' show aaaa;
模式二: 
  隐藏不需要的部分，使用hide关键字
    e.g. import 'xxx.dart' hide bbb;
*/

/*
async 和 await
只有async方法才能使用await关键字调用方法
如果调用别的async方法必须使用await方法

async是让方法变成异步 
await是等待异步方法执行完成
*/