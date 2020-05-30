import 'package:flutter/material.dart';
import 'package:jwellflutter/douban/pages/main/Initialize_items.dart';

class RYMainPage extends StatefulWidget {
  @override
  _RYMainPageState createState() => _RYMainPageState();
}

class _RYMainPageState extends State<RYMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
