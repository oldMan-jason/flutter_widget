
//泛型接口
abstract class LoginManger<T>{

}

//泛型类
class ListUtil<T>{

  List list = new List<T>();
  void setValue(T value){
    this.list.add(value);
  }

  printListInfo(){

    this.list.forEach((value){
        print(value);
    });
  }
}

main() {

ListUtil utils = new ListUtil<int>();
utils.setValue(12);
utils.printListInfo();

}