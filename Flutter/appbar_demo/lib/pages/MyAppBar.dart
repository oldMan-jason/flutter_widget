import 'package:flutter/material.dart';


class MyAppBar extends StatefulWidget {
  MyAppBar({Key key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

/**
 * AppBar的常用属性
 */
class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('AppBarDemo'),
        //设置Appbar的背景颜色
        backgroundColor: Colors.cyan,
        //添加左边的图片，Icon不可以设置事件监听
        // leading: Icon(Icons.menu),
        //使用IconButton
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
          print('左边的菜单按钮被点击');
          Navigator.of(context).pop();
        }),
        //设置右侧的按钮
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){

          }),
          IconButton(icon: Icon(Icons.home), onPressed: (){
            
          })
        ],
      ), 
      body: Text('AppBarDemo'),
    );
  }
}