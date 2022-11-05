main(List<String> args) {
  
// map里面的key不能相同。但是value可以相同,value可以为空字符串或者为null。
var map = {
  "name":"jason",
  "age":12,
  "color":["red","yeeloe"]
};
print(map);

//移除对应的键值对
map.remove("age");
print(map);

//map是否包含key
map.containsKey("name");




}