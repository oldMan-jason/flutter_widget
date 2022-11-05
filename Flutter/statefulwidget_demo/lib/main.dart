import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('StatefulWidget'),
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
 * StatefulWidget 有状态的组件
 * 页面上绑定数据，改变页面数据
 * 
 * 实现一个： 点击按钮，让列表插入一条数据
 */
class BodyApp extends StatefulWidget {
  BodyApp({Key key}) : super(key: key);

  @override
  _BodyAppState createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {

  List <String> myList = new List();
  int column = 0;

  List<Widget> _getWidget(){

    return this.myList.map((value){
      return ListTile(
        title: Text(value),
      );
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
         children: <Widget>[
           Column(
             children: this._getWidget(),
           ),
           RaisedButton(onPressed: (){
             setState(() {
              this.column ++;
              this.myList.add('第${this.column}列');
             });
           },
           child: Text('按钮'),
           textColor: Colors.orange,
          
           )
         ],
       ),
    );
  }
}

