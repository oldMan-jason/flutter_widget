import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView_Demo'),
      ),
      body: MyGridView(),
    );
  }
}

/**
 * 使用GridView的build
 */
class MyGridView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      //注意！！ 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ), 
      itemBuilder: this._getGridViewDataWidget,
      itemCount: listData.length,
      );
  }


/**
 * 获取数据源，动态换回组件
 */
  Widget _getGridViewDataWidget(context,index){

    return Container(

      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(233, 233, 233, 0.9),
          width:1,          
        ),
      ),
      child: Column(
        children: <Widget>[
            Image.network(listData[index]['imageUrl']),
            SizedBox(height: 8),
            Text(
              listData[index]['title'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              ),
        ],
      ),
    );
  }


}
