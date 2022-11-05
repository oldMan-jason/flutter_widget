
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
 * 封装动态获取数据
 */

class BodyApp extends StatelessWidget {

 //
  Widget _getListData(context,index){
    return ListTile(
      title: Text(listData[index]['title']),  
    );
  }
  /**
   * typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);
   */
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: 
      this._getListData,
      itemCount: listData.length,
    );
  }
}







/**
 * 动态添加数据
 * ListviewBuild实现循环遍历数据
 */

// class BodyApp extends StatelessWidget {
  
//    List list = new List();

//   //构造函数准备数据
//   BodyApp(){

//     // for (var i = 0; i < 20; i++) {
//     //   this.list.add("jason");
//     // }

//     // var tmplist= listData.map((value){
//     //   return value['title'];
//     // });
//     // this.list.addAll(tmplist);

//   }

//   @override
//   Widget build(BuildContext context) {

//    //Widget Function(BuildContext context, int index);

//    return ListView.builder(
//      itemCount: this.list.length,
//      itemBuilder:(context,index){
//      return ListTile(
//        title: Text(
//          this.list[index]
//        ),
//      );
//    }
//    );
//   }
// }
