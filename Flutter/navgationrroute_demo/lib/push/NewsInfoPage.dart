import 'package:flutter/material.dart';

class NewsInfoPage extends StatefulWidget {

  final Map arguments;
  NewsInfoPage({Key key,this.arguments}) : super(key: key);
  
  @override
  _NewsInfoPageState createState() => _NewsInfoPageState(this.arguments);
}

class _NewsInfoPageState extends State<NewsInfoPage> {

  Map arguments;
  _NewsInfoPageState(this.arguments);
  @override
  Widget build(BuildContext context) {
    print('命名路由传值${this.arguments}');
    return Scaffold(
      appBar: AppBar(
        title: Text('命名路由'),
      ), 
      body: Center(
        child: ListTile(
          title: Text('命名路由-传值:${this.arguments}'),
        ),
      ),
    );
  }
}
