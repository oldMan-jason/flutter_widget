


class Person{
  String name;
  int age;

  Person(this.name,this.age);

  void printInfo(){
    print('${this.name} --- ${this.age}');
  }

}

/**
 * 类中的对象操作符
 *  1. ? 条件运算符
 *  2、 as 类型的转化
 *  3、 is 类型的判断
 *  4、 .. 级联操作
 */
main(List<String> args) {

    Person p;
    p?.name = 'jason';


    var p1 = 'json';
    p1 = new Person('hello', 12) as String;
    print(p1);


    Person p3 = Person('jason', 12);
    p3..age = 12
    ..name = 'json'
    ..printInfo()
    ..name = 'kk';








    
}