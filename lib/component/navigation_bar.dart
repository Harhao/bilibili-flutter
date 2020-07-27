import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/customIcon.dart';
import '../routers/application.dart';

class NavigationBar extends StatefulWidget {
  int selectedIndex;
  NavigationBar({Key key, @required this.selectedIndex}):super(key: key);
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).primaryColor,
        unselectedItemColor: Color(0xff8b8b8b),
        unselectedLabelStyle: TextStyle(color: Color(0xff8b8b8b)),
        unselectedFontSize: 14.0,
        currentIndex: widget.selectedIndex,
        onTap: selectedBottomBar,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CustomIcon.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(CustomIcon.channel), title: Text('频道')),
          BottomNavigationBarItem(
              icon: Icon(CustomIcon.dynamicState), title: Text('动态')),
          BottomNavigationBarItem(
              icon: Icon(CustomIcon.memberShop), title: Text('会员购')),
        ]);
  }

  void selectedBottomBar(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
    switch (index) {
      case 0:
        Application.router.navigateTo(context, "/");
        break;
      case 1:
        Application.router.navigateTo(context, "/channel");
        break;
      case 2:
        Application.router.navigateTo(context, "/dynamicState");
        break;
      case 3:
        Application.router.navigateTo(context, "/memberShop");
        break;
    }
  }
}
