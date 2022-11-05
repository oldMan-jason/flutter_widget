import 'package:flutter/material.dart';
import '../../push/HomePushPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('显示普通路由的跳转以及传值'),
          SizedBox(height: 20),
/**
 * 此处为 普通路由的push，包括基本的正向传值
 */
          RaisedButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(context){
                  return HomePushPage('我是传值过去的');
                }),
              );
            },
            child: Text('push'),
          )

        ],
      ),
    );
  }
}