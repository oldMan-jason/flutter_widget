
import 'package:flutter/material.dart';
import 'tabs/HomePage.dart';
import 'tabs/TripPage.dart';
import 'tabs/MinePage.dart';
import 'tabs/ServicePage.dart';
import 'tabs/NewsPage.dart';

class TabState extends StatefulWidget {
  TabState({Key key}) : super(key: key);

  @override
  _TabStateState createState() => _TabStateState();
}

class _TabStateState extends State<TabState> {


  List pages = [HomePage(),TripPage(),NewsPage(),ServicePage(),MinePage()];
  List titles = ['国网商旅云','行程','资讯','客服','我的'];

  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titles[this.selectIndex],style: TextStyle(fontSize:20)),
        backgroundColor: Colors.blue,
      ),
      body: this.pages[this.selectIndex],
    
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.selectIndex,
        onTap: (index){
          setState(() {
            this.selectIndex = index;
          });
        },
        //显示多个item需要设置改属性
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(26, 150, 151, 1),
        unselectedItemColor: Color.fromRGBO(51, 51, 51, 1),
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(icon: Image.asset('images/tabBar_home_unselect.png',fit: BoxFit.cover),activeIcon: Image.asset('images/tabBar_home_select.png'),title: Text('首页')),
          BottomNavigationBarItem(icon: Image.asset('images/tabBar_journey_unselect.png',fit: BoxFit.cover),activeIcon: Image.asset('images/tabBar_journey_select.png'),title: Text('行程')),
          BottomNavigationBarItem(icon: Image.asset('images/tabbar_information_unselect.png',fit: BoxFit.cover),activeIcon: Image.asset('images/tabbar_information_select.png'),title: Text('资讯')),
          BottomNavigationBarItem(icon: Image.asset('images/tabBar_service_unselect.png',fit: BoxFit.cover),activeIcon: Image.asset('images/tabBar_service_select.png'),title: Text('客服')),
          BottomNavigationBarItem(icon: Image.asset('images/tabBar_my_unselect.png',fit: BoxFit.cover),activeIcon: Image.asset('images/tabBar_my_select.png'),title: Text('我的')),
        ],
      ),
      
    );
  }
}