import 'package:flutter/material.dart';
import 'pages/TabState.dart';

void main(){
 runApp(MyApp()); 
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabState(), 
    );
  }
}

