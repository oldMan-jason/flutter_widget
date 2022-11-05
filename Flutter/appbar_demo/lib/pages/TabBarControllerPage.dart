

import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

/**
 * 1. with SingleTickerProviderStateMixin
 * 2. 定义 TabController
 * 3. 初始话参数
*/
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {

    super.initState();
    //初始化TabController
    this._tabController = TabController(length: 2, vsync: this);

    this._tabController.addListener((){
      print(this._tabController.index);
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabController演示分栏器'),
        bottom: TabBar(
//注意！！赋值 controller
          controller: this._tabController,
          tabs: 
        [
          Tab(text:'推荐'),
          Tab(text:'热门'),
        ]
        ),
      ), 
      body: TabBarView(
//注意！！赋值 controller
        controller: this._tabController,
        children: [
          ListTile(
            title: Text('推荐的列表'),
          ),
          ListTile(
            title: Text('热门的列表'),
          )
        ]
      
      ),
    );
  }
}