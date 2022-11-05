import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  
  const NewsDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('命名路由'),
      ),
      body: Container(
      child: Center(
        child: RaisedButton(
          onPressed: (){
            
          },
          child: Text('这个是咨询详情'),
        
        ), 
      ),
    ),
    );
  }
}
