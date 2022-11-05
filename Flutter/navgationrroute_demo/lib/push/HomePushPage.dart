import 'package:flutter/material.dart';
class HomePushPage extends StatefulWidget {

  final String title;
  HomePushPage(this.title);

  @override
  _HomePushPageState createState() => _HomePushPageState();
}

class _HomePushPageState extends State<HomePushPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('普通路由'),
      ),
      body: Text('传值内容==${widget.title}'),
    );
  }
}