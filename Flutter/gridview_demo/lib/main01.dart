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
 * 使用GridView的count
 */
class MyGridView extends StatelessWidget {
  List<Widget> _getGridViewData() {
    List<Widget> list = new List();

    for (var i = 0; i < listData.length; i++) {
      Container container = new Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.lightGreen,
            width: 1.0,
          ),
          // borderRadius: BorderRadius.circular(10),
          //  image: DecorationImage(image:
          //     NetworkImage(listData[i]["imageUrl"]),
          //     fit: BoxFit.cover
          //  )
        ),
        // padding: EdgeInsets.all(10),
        // margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              listData[i]["imageUrl"],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              listData[i]['title'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      );
      list.add(container);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      reverse: false, //组件方向排序
      crossAxisCount: 3, //一行的widget的数量
      crossAxisSpacing: 10.0, //水平子widget的间距
      mainAxisSpacing: 10.0, //垂直子widget的间距
      // childAspectRatio: 0.7,//宽高比例
      children: this._getGridViewData(),
    );
  }
}
