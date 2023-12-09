

import 'package:flutter/material.dart';
import 'package:mrtouride/home_page.dart';
import 'package:mrtouride/main.dart';
import 'package:mrtouride/navpages/bar_item.dart';
import 'package:mrtouride/navpages/my_page.dart';


import 'package:mrtouride/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomeScreen(),
    BarItemPage(),
    SearchPage(),
    MyPage(),

  ];

  int currentIndex=0;
  void onTap(int index)
  {
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [

          BottomNavigationBarItem(icon:Icon(Icons.apps), label:"Home"),
          BottomNavigationBarItem(icon:Icon(Icons.bar_chart_sharp), label:"Bar"),
          BottomNavigationBarItem(icon:Icon(Icons.search), label:"Search"),
          BottomNavigationBarItem(icon:Icon(Icons.person), label:"My"),
          // BottomNavigationBarItem(title:Text("Bar"),icon:Icon(Icons.apps)),
          // BottomNavigationBarItem(title:Text("Search"),icon:Icon(Icons.apps)),
          // BottomNavigationBarItem(title:Text("My"),icon:Icon(Icons.apps)),
        ],

      ),
    );
  }
}
