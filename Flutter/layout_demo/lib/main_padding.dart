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
          title: Text('PaddingApp'),
        ),

        //Padding组件
        body: BodyApp(),

      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


/**
 * Padding 组件
 * 两个属性 
 *  padding
 *  child
 */
class BodyApp extends StatelessWidget{

List<Widget> _getPaddingData(){
var tmpList = listData.map((value){
   return Padding(
     padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
     child: Image.network(value['imageUrl'],fit: BoxFit.cover,),
   );
});
return tmpList.toList();

}

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
      crossAxisCount: 2,
      children: this._getPaddingData(),  
    ),
    );
  }  
}
