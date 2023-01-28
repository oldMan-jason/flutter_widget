main(List<String> args) {
  //默认参数
  // List datalist = requestData("/user/token", {"name":"jack","age":12});
  // print(datalist);

  //默认参数
  List da = requestData("api", {"age": 12}, false);
  print(da);

  //可选参数
  printInfo('name', 22);
  printInfo('ceshi', 33, '男');

  //命名参数
  setMingminparameterFuns("jaosn", age: 12);
  setMingminparameterFuns('shaozejun', age: 12, hoopy: 'ios');

  List student = new List();
  //箭头函数
  student.forEach((value) => print(value));
  //或者
  student.forEach((value) => {print(value)});

  //匿名函数
  var funs = (int a) {
    print(a);
  };
  funs(1);

  //自执行方法
  ((int a) {
    print(a);
  })(12);

  /**
   * Dart的闭包
   * 1、常驻内存
   * 2、不污染全局
   * 函数内包含一个函数，并且返回这个函数
   */

  fn(int a) {
    var fn2 = (int b) {
      print(a + b);
    };
    return fn2;
  }

  fn(12)(12);
}

//默认参数
List requestData(String api, Map paramers, [bool isShowloading = true]) {
  if (isShowloading) {
    print("true");
  } else {
    print("false");
  }
  var list = ["jack1", "tom2"];
  return list;
}

// 可选函数的参数
String printInfo(String name, [int age, String sex]) {
  print('$name --- 年龄$age --- 性别$sex');
  return "ok";
}

//命名参数    {} 函数调用时候，必须写实参
void setMingminparameterFuns(String name, {int age, String hoopy}) {
  print("$name -- $age -- $hoopy");
}

void setMingminparameterFuns2(String name, {int age = 12, String sex}) {
  print('$name -- $age -- $sex');
}
