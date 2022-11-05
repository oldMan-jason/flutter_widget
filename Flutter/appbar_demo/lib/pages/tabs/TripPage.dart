import 'package:flutter/material.dart';

class TripPage extends StatefulWidget {
  TripPage({Key key}) : super(key: key);

  @override
  _TripPageState createState() => _TripPageState();
}

/**
 * 针对已经是根控制器的如何添加分栏选择器
 * 使用Scaffold 的 title组件属性 设置为row
*/
class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
              title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.yellow,
                  unselectedLabelColor: Colors.lightGreen,
                  tabs: <Widget>[
                    Tab(text: '分栏1'),
                    Tab(text: '分栏2'),
                    Tab(text: '分栏3'),
                    Tab(text: '分栏4'),
                  ],
                ),
              ),
            ],
          )),
          body: TabBarView(children: [
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('推荐列表'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('音乐列表'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('楼市列表'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('推荐列表'),
                )
              ],
            ),
          ])),
    );
  }
}
