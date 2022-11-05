import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: BodyApp(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

/**
 * 动态添加数据
 */
class BodyApp extends StatelessWidget {

//自定义方法,私有
List<Widget> _getData(){
  
List<Widget> list = new List();
for (var i = 0; i < 10; i++) {
  ListTile listTitle = ListTile(
    title: Text(
      '我是一个标题的$i列表'
    ),
  );
  list.add(listTitle);
}
return list;
}
  @override
  Widget build(BuildContext context) {
    return ListView(
      //通过封装的方法进行调用
      children: this._getData(),
    );
  }
}
