

main(List<String> args) {

//整型 只能是整数
int age = 12;
print(age);
//浮点型 可以是整数
double height = 18.21;
print(height);

//布尔型
bool real = true;
//条件判断
if (real) {
  print("真的");
} else {
  print("假的");
}


//字符串型
String name = "jason";
String text = "hello world";
//字符串的拼接
String newStr = name + text;
//或者
String newStr2 = "$name" + "$text";
print(newStr);
print(newStr2);


/**
 * List(数据、集合)
 */
//第一种方式
var listvar = ["北京","上海","武汉","深圳"];
print(listvar);
print(listvar.length);
print(listvar[2]);

//第二种方式 指定类型
var array = new List<String>();
array.add("jason");
array.add("shao");
array.add("wuhan");
print(array);

var intarr = new List<num>();
intarr.add(1);



/**
 * Maps类型
 * 
 */
//第一种方式
var dic = {"name":"shaozejun",
          "age":19,
          "work":["Dart","iOS"]
          };
print(dic);    
int ageValue= dic["age"];
print(ageValue);  

//第二种方式
var dic1 = new Map();
dic1["age"] = 20;
dic1["height"] = 173;
print(dic1);


/**
 * is 关键字判断类型
 */

String userid= "123";
if (userid is String) {
  print("字符串类型");
}else{
  print("不知道什么类型");
}

}