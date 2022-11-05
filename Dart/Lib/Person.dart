
class Person{
  
  String name;
  int age;

  void getInfo(){

    print("$name -- $age");
    print("${this.name} ----- ${this.age}");

  }

  void setPersonInfo(String name){
      this.name = name;
  }

  

  //构造函数
  // Person(){
  //   print("这个是构造函数");
  // }

  //默认构造函数
  Person(String name,int age){

    this.name = name;
    this.age = age;

  }

  //命名的构造函数
  // Person.now(){
  //   print("命名的构造函数");
  // }

 Person.now(String name,int age){
    print("命名的构造函数");
    this.name = name;
    this.age = age;
  }

}

