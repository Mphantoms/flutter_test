import 'package:flutter/material.dart';
import 'package:ip_stage/pages/home.dart';
import 'package:ip_stage/pages/museum.dart';
import 'package:ip_stage/pages/customer.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  Color _normalColor = Colors.black;
  Color _activeColor = Colors.blue;
  int _currentIndex = 1;
  List list = [
    Museum(),
    Home(),
    Customer()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grade,
                color: _normalColor,
              ),
              title: Text(
                '博物馆',
                style: TextStyle(color: _normalColor),
              ),
              activeIcon: Icon(
                Icons.grade,
                color: _activeColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _normalColor,
              ),
              title: Text(
                '主页',
                style: TextStyle(color: _normalColor),
              ),
              activeIcon: Icon(
                Icons.home,
                color: _activeColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: _normalColor,
              ),
              title: Text(
                '我的',
                style: TextStyle(color: _normalColor),
              ),
              activeIcon: Icon(
                Icons.account_box,
                color: _activeColor,
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
