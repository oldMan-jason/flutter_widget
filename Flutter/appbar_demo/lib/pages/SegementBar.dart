import 'package:flutter/material.dart';

class SegementBar extends StatefulWidget {
  SegementBar({Key key}) : super(key: key);

  @override
  _SegementBarState createState() => _SegementBarState();
}

/**
 * AppBar的常用属性
 */
class _SegementBarState extends State<SegementBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
/**
 *  设置分栏
*/  
          bottom: TabBar(
            
            onTap: (index){
              print(index);
            },
            tabs: <Widget>[
            
            Tab(
              text: '推荐',
            ),
             Tab(
              text: '音乐',
            ),
             Tab(
              text: '楼市',
            ),
             Tab(
              text: '技术',
            ),
            Tab(
              text: '博客',
            ),
            
          ]),
          centerTitle: true,
          title: Text('Segment'),
          //设置Appbar的背景颜色
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(children:[
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
                title: Text('技术列表'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('博客列表'),
              )
            ],
          )
        ] 
        ),
      ),
    );
  }
}
