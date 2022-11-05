

//抽象类 子类继承与抽象类，需要实现抽象方法
abstract class Animal {
  //抽象类的方法都是抽象方法
  eat();

  run();

}

class Dog extends Animal{

  @override
  eat() {
    print('Dog');
  }
  @override
  run() {
    print('dog run');
  }

}





main(List<String> args) {

}