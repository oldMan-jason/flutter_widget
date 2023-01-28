main(List<String> args) {
  //单行字符串
  String str1 = "string1";
  //多行字符串
  String str2 = """
                  this is dart
                  hello world
                """;

  print(str2);
  //字符串的拼接
  String name1 = "邵泽俊";
  String age = "30";
  print(name1 + age);

  String? myName = "12";
  myName = null;
}
