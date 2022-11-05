
/**
 * 1. staic 静态成员和静态方法，只可以访问自己的成员和方法
 * 2. 非静态方法可以访问非静态成员，静态成员 静态方法
 */
class Person{

  //静态成员
  static String name;
  String age;
  //静态方法
  static void printInfo(){

  }
  //非静态方法（对象方法）可以访问静态成员以及静态方法，非静态成员
  void show(){
    print(name);
    print(this.age);

    printInfo();

  }

}



main(List<String> args) {
  

}