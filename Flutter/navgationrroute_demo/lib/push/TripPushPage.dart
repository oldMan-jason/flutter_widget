import 'package:flutter/material.dart';

class TripPushPage extends StatefulWidget {
  TripPushPage({Key key}) : super(key: key);

  @override
  _TripPushPageState createState() => _TripPushPageState();
}

class _TripPushPageState extends State<TripPushPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('ListView'), 
      ),
/**
 * 自定义返回事件
 */
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
        Navigator.of(context).pop();
        }
      ),
/*********************************************/
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('标题1'),
            subtitle: Text('副标题2'),
          ),
          ListTile(
            title: Text('标题1'),
            subtitle: Text('副标题2'),
          ),
          ListTile(
            title: Text('标题1'),
            subtitle: Text('副标题2'),
          ),
          ListTile(
            title: Text('标题1'),
            subtitle: Text('副标题2'),
          )

        ],
      ),
    );
  }
}