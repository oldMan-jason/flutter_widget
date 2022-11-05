import 'package:flutter/material.dart';
import '../MyAppBar.dart';
import '../SegementBar.dart';
import '../TabBarControllerPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyAppBar()));
          },
          child: Text('演示AppBar属性设置'),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SegementBar()));
          },
          child: Text('演示顶部-分栏选择器1'),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TabBarControllerPage()));
          },
          child: Text('演示顶部-分栏选择器2'),
        ),
      ],
    )
    );
  }
}
