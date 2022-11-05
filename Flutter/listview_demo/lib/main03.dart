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
 * children 存放其他的组件
 */
class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Image.network("http://img.zybus.com/uploads/allimg/140830/1-140S0155522-50.jpg"),
        Container(
          height: 50,
          alignment: Alignment.center,
          color: Colors.blue,
            child: Text(
              '我是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
        ),
        Image.network("http://a0.att.hudong.com/78/52/01200000123847134434529793168.jpg"),
        Container(
          height: 50,
          alignment: Alignment.center,
          color: Colors.blue,
            child: Text(
              '我是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
        ),
        Image.network("http://a0.att.hudong.com/16/90/01300000199940121626908088366.jpg"),
        Container(
          height: 50,
          alignment: Alignment.center,
          color: Colors.blue,
            child: Text(
              '我是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
        ),
        Image.network("http://a1.att.hudong.com/68/42/01300000165488121456425486010.jpg"),
        Container(
          height: 50,
          alignment: Alignment.center,
          color: Colors.blue,
            child: Text(
              '我是一个标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
        ),


      ],
    );
  }
}
