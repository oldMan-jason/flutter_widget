import 'dart:ui';

import 'package:flutter/material.dart';

/**
 * 资源的导入
 */
import 'res/listData.dart';

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
 * 动态添加数据 通过本地数据来展示Listview
 */
class BodyApp extends StatelessWidget {
//自定义方法,私有
  List<Widget> _getData() {
    var tmpList = listData.map((value) {
      ListTile listTitle = ListTile(
        title: Text(value['title']),
        subtitle: Text(value['author']),
        leading: Image.network(value['imageUrl']),
      );
      return listTitle;
    });
    return tmpList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      //通过封装的方法进行调用
      children: this._getData(),
    );
  }
}
