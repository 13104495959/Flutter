import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* 变量 */
    // 使用类型推断,推断出来的是int
    var currentNumber = 10000;
    // 使用String进行赋值的会报错,提示类型不匹配
    // currentNumber = '1000';
    print(currentNumber);
    // 使用显式变量类型声明,指定类型为String
    String userNmae = '用户';
    // 使用int进行赋值的会报错,提示类型不匹配
    // userNmae = 100;
    print(userNmae);
    // 对象不限于单一类型,声明的时候是String,但是仍然可以用int进行赋值,并且编辑器不会报错
    dynamic multipleTypes = 'string';
    print(multipleTypes);
    // 类型推断为String,但是可以使用除String类型之外的赋值,例如int
    multipleTypes = 10;
    print(multipleTypes);

    return new MaterialApp(
      title: 'GH demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('GH demo'),
        ),
        body: new Center(
          child: new Text('就是个精神2222221111病'),
        ),
      ),
    );
  }
}
