main(List<String> args) {
  List students = ["张三", "李四", "王五"];
  print(students[1]);

  students.fillRange(1, 2, "kk");

  //判断是否为空数组
  var list = new List<String>();
  int length = list.length;
  bool isEmpty = list.isEmpty;
  bool isNotEmpty = list.isNotEmpty;

  //倒叙排序
  var reversedArray = students.reversed.toList();
  print(reversedArray);

  //添加数据
  List student = ["张三", "李四", "王五"];
  student.add("jason");
  student.addAll(["rose", "jack", "tom"]);
  print(student);

  //插入数据
  student.insert(1, "element");
  student.insertAll(3, ["kk", "11"]);

  //数组转化为字符串
  String json = student.join(",");
  print(json);

  //字符串转化为数组
  String jsonStr = "12,13,14,15";
  var mylist = jsonStr.split("-");
  print(mylist);
  print(mylist is List);

  //数组的查找
  int index = student.indexOf("jack");
  print(index);

  //删除
  student.removeAt(4);
  print(student);
  //首先会删除指定范围的数据，在用新的集合添加
  student.replaceRange(1, 3, ["11", "22"]);
  print(student);

  //修改数组中指定位置的数据
  List test = ["张三", "李四", "王五", "jack", "tom", "jason"];
  test.fillRange(1, 2, "哈哈哈");
  print(test);

  //于list的区别在于: 无顺序，不可以添加重复的数据
  var set = new Set();
  set.add("value1");
  set.add("value2");
  set.add("value2");
  print(set);

  //set集合转 list
  var setList = set.toList();
  print(setList);

  xunhuanFunx();
}

//集合的循环遍历
void xunhuanFunx() {
  //forEach
  List student = ["张三", "李四", "王五"];
  student.forEach((value) {
    print(value);
    print("$value");
  });

//箭头函数
  student.forEach((value) => print(value));
//或者
  student.forEach((value) => {print(value)});

  print("------------");
//map
  List student2 = ["张三", "李四", "王五"];
  var newArr = student2.map((value) {
    return value + "11";
  });
  print(newArr);

//where
  var arr = student2.where((value) {
    return value == "张三";
  });
  print(arr);

  List numbers = [1, 2, 3, 4, 5, 6, 7];
  var numersfiller = numbers.any((value) {
    //只要集合里面有满足的就返回真
    return value > 4;
  });
  print(numersfiller);

  List numbers2 = [1, 2, 3, 4, 5, 6, 7];
  var numersfiller2 = numbers2.every((value) {
    //只要有一个满足就是true
    return value < 3;
  });
}
