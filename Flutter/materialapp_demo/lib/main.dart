import 'package:flutter/material.dart';

void main(){
  runApp(MaterialAppWidget());
}

/**
 * 使用materialApp 和scaffold 组件
 */
class MaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '国网商旅'
          ),
        ),
        body: MyApp(),
        bottomNavigationBar: BottomNavigationBar(items: 
        [
          BottomNavigationBarItem(
            title: Text(
              '首页'
            ),
            icon:Image(image: AssetImage("icon/baoxiao_dianfu_icon_hotel@2x.png"),
            width: 100.0)
          ),
          BottomNavigationBarItem(
            title: Text(
              '我的'
            ),
            icon:Image(image: AssetImage("icon/baoxiao_dianfu_icon_hotel@2x.png"),
            width: 100.0)
          )

        ],
        ),
      ),
      theme: ThemeData(
       primaryColor :Colors.blue,
      ),
    );

  }
}

class MyApp extends  StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Center(
      child : Text(
        'Flutter Demo,面向对象编程 swift的语法很相似，测试一下面向对象编程 swift的语法很相似，测试一下面向对象编程 swift的语法很相似，测试一下',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.blue,
          decoration: TextDecoration.underline,

        ),
      ),
    ));
  }

}

