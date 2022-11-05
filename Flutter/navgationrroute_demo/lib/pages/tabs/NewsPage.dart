import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
                '命名路由，需要在根组件进行配置\n 方法：Navigator.pushNamed(context, \'newDetail\'); '),
          ),
          RaisedButton(
              onPressed: () {
/** 
 *  命名路由的push
 */
                Navigator.pushNamed(context, '/newsDetail');
              },
              child: Text('咨询详情，不传递参数')
          ),
          RaisedButton(
              onPressed: () {
/**
 *  命名路由的push，带传输传值
 * 
//  */            
                Navigator.pushNamed(context, '/newsInfo',arguments: {'value':12});
              },
              child: Text('咨询详情，传递参数')
          ),
        ],
      ),
    );
  }
}
