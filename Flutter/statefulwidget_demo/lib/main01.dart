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
 * StatefulWidget 有状态的组件
 * 页面上绑定数据，改变页面数据
 * 
 * 实现一个： 点击按钮，让数字+1
 */
class BodyApp extends StatefulWidget {
  BodyApp({Key key}) : super(key: key);

  @override
  _BodyAppState createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {

  int countNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(

       child: Stack(
        children: <Widget>[
          Positioned(
            left: 120,
            top: 100,
            child: Chip(label: Text('${this.countNumber}'),
            )
          ),
          Positioned(
            child: RaisedButton(
            onPressed: (){
              setState(() {
                this.countNumber ++;
              });
            },
            child: Text('按钮'),              
            textColor: Colors.cyan,
          ),
          top: 200,
          left: 100,
          )
        ], 
       ),
    );
  }
}

