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
    // flutter: 10000
    print(currentNumber);

    // 使用显式变量类型声明,指定类型为String
    String userNmae = '用户';
    // 使用int进行赋值的会报错,提示类型不匹配
    // userNmae = 100;
    // lutter: 用户
    print(userNmae);

    // 对象不限于单一类型,声明的时候是String,但是仍然可以用int进行赋值,并且编辑器不会报错
    dynamic multipleTypes = 'string';
    // flutter: string
    print(multipleTypes);
    // 类型推断为String,但是可以使用除String类型之外的赋值,例如int
    multipleTypes = 10;
    // flutter: 10
    print(multipleTypes);
    // 未初始化的变量的初始值为null。dart的变量全部都是对象,对象的初始值是null,即使数字类型的变量最初为空，因为数字 - 就像Dart中的其他所有数据 - 都是对象。
    int testNull;
    print(testNull);

    /*final和const*/
    // final的关键字使用,只能赋值一次,
    final finalTest = 'finalTest';
    // 也可以指定类型
    final String finalTest1 = 'finalTest1';
    // 下面的这行代码会报错,提示只能赋值一次
    // finalTest = 'finalTest';
    // const的关键字的使用,
    const constTest = 10;
    // 下面的代码会报错,不能更改变量
    // constTest = 20;

    /*lists*/
    // var 修饰的数组
    var list = [1,2,3];
    // 分析器推断list具有类型List<int>,声明完只能使用int赋值,使用其他类型的赋值会报错
    print(list.length);// 3
    print(list[0]);// 1
    list[0] = 100;
    print(list[0]);

    // 注意final修饰的lists,里面的值任然可以被更改
    final finalList = [1,2,3];
    finalList[1] = 10000000;
    print(finalList[1]);

    // cosnt修饰的lists只能取值,不能修改值
    const constlList = [1,2,3];
    // 打开下面的额代码会报错
    // finalList[0] = 100;
    print(constlList[1]);
    // 如果使用const修饰[1,2,3], const[1,2,3]那么这个数组的值是不能修改的

    /*maps*/
    // 分析器推断Map<String, String>
    var varMap1 = { 'one' : 'one', 'two' : 'two' };
    print(varMap1['one']);
    // 分析器推断Map<int, int>
    var varMap2 = { 1 : 1, 2 : 2 };
    print(varMap2[2]);
    // 可以传入不同的键值对
    var varMap3 = new Map();
    varMap3[1] = 1;
    varMap3['1'] = '1';
    print(varMap3.length);

    /*方法*/
    // 1无参数无返回值
    void function1 () {
      print('这是一个无参数无返回值带void关键字的方法');
     }
    function1();
    // 可以省略 void 关键字
    function2 () {
      print('这是一个无参数无返回值省略void关键字的方法');
    }
    function2();
    // 2无参数有返回值
    int function3 () {
      print('function3');
      return 10;
    }
    function3();
    // 3有必须参数无返回值
    void function4 (int number) {
      print(number);
    }
    function4(10);
    // 4有必须参数有返回值
    int function5 (int number) {
      print(number);
      return number;
    }
    function5(100);
    // 5有多个必须参数有返回值
    int function6 (int number1, int number2, int number3) {
      print(number1 + number2 + number3);
      return number1 + number2;
    }
    function6(100, 100, 100);
    // 可选参数,可选参数可以是位置或命名的，但不能同时包含两者。例如：paramName: value
    // 可选参数可以使用=来设置可选参数的默认值

    // 命名参数使用{}包裹,并且需要指定参数的形参和类型,例如{int number2, int number3}
    // 命名参数, 可选参数必须在必须参数的后面,可选参数后面不能有必须参数!!!!!!!
    void enableFlags (int number1, {int number2 = 100, int number3}) {
      print('可选参数的命名参数');
      print(number1);
      print(number2);
      print(number1 + number2 + number3);
    }
    // 调用可选参数的时候必须输入可选参数的形参命名,参数的对应是根据参数的key来判断
    enableFlags(1000, number3: 100,number2: 10000000);
    // 位置参数
    // 位置参数使用[]包裹,并且需要指定参数的形参和类型,例如[int number2, int number3]
    // 位置参数, 可选参数必须在必须参数的后面,可选参数后面不能有必须参数!!!!!!!
    int enable (int number1, [int number2 = 100, int number3]) {
      print(number1 + number2);
      return number1 + number2;
    }
    // 调用可选参数的时候不需要输入形参的命名,会根据位置计算出对应的参数,参数的对应是根据参数在数组中的位置来判断,没办法改变传入的参数在方法中的对应的位置
    enable(100, 101);
    // lists和map做参数
    void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
    print('list:  $list');
    print('gifts: $gifts');
    }
    doStuff();

    return new MaterialApp(
      title: 'GH',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('GH'),
        ),
        body: new Center(
          child: new Text('哈哈哈哈'),
        ),
      ),
    );
  }
}