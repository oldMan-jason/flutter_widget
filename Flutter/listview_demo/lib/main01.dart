import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: BodyApp(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

/**
 * 通过ListTile
 */
class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.search
          ),
          trailing: Icon(
            Icons.settings,
          ),
          title: Text('Listview-Test'),
          subtitle: Text('Listview-subTest'),
        ),
        ListTile(
          title: Text('Listview-Test'),
          subtitle: Text('Listview-subTest'),
        ),
        ListTile(
          title: Text('Listview-Test'),
          subtitle: Text('Listview-subTest'),
        ),
        ListTile(
          title: Text('Listview-Test'),
          subtitle: Text('Listview-subTest'),
        ),
        ListTile(
          title: Text('Listview-Test'),
          subtitle: Text('Listview-subTest'),
        ),
        ListTile(
          title: Text('Listview-Test'),
          subtitle: Text('Listview-subTest'),
        ),
      ],
    );
  }
}
