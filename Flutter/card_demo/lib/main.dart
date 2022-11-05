import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Card_demo',
            style: TextStyle(color: Color.fromRGBO(233, 233, 233, 1)),
          ),
        ),
        //  body: BodyApp(),
        body: NewBody(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class NewBody extends StatelessWidget {
  const NewBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 200,
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Text('122222'), Text('122222')],
          ),
        ),
      ],
    );
  }
}

class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listData.map((value) {
      print(value);
      return Card(
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                value['imageUrl'],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              //使用 CircleAvatar 设置头像
              leading: CircleAvatar(
                backgroundImage: NetworkImage(value['imageUrl']),
              ),
              title: Text(value['title']),
              subtitle: Text(value['author']),
            )
          ],
        ),
      );
    }).toList());
  }
}
