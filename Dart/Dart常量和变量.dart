
void main(List<String> args) {

  //变量的定义
  var name = "jason";
  //或者是制定类型
  String nameStr = "jason";
  print(name);
  print(nameStr);


  var age = 12;
  //或者
  int age1 = 12;
  print(age);
  print(age1);

  //变量是可以修改
  age = 20;
  print(age);


  //常量的定义！！！！！
  const PI = 3.1415926;
  //或者
  final PI1 = 3.1415026;
  //常量是不可以修改的
  //PI = 3.14;
  print(PI);
  
  //如果是获取一个函数返回的值，则用final
  final date = DateTime.now();
  print(date);

  //const是不可以接受一个函数的返回值
  //const date1 = DateTime.now();

  /**
   * final于const的区别
   * final不仅有const的编译时常量的特性，最重要的是它是运行时常量，并且final是惰性初始化
   * 即在运行时第一次使用前才初始化。
   */





}
