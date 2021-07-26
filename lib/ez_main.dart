import 'package:flutter/material.dart';

import 'news/news_home.dart';

class EzMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EzMainState();
  }
}

class UnUsedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "待开发",
        style: TextStyle(fontSize: 30, color: Colors.black45),
      ),
    );
  }
}

class EzMainState extends State<EzMain> {
  int _currentIndex = 0;
  final pages = [NewsHome(), UnUsedWidget(), UnUsedWidget(), UnUsedWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: bottomNavItems,
        onTap: (index) {
          _changePage(index);
        },
      ),
    );
  }

  //定义底部菜单
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      label: '视频',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: '会员',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: '我的',
    ),
  ];

  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
