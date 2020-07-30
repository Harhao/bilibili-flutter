import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "../component/my_drawer.dart";
import '../config/customIcon.dart';
import 'channel.dart';
import 'home.dart';
import 'member_shop.dart';
import 'dynamic_state.dart';
import '../component/custom_drawer.dart';
import '../utils/inherit_context.dart';

class Entry extends StatefulWidget {
  @override
  _EntryState createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<Widget> widgetList = <Widget>[
    Home(),
    Channel(),
    DynamicState(),
    MemberShop()
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
    return InheritedContext(
        openDrawer: openDrawer,
        child: Scaffold(
          key: _scaffoldKey,
          body: Hero(tag: 'Entry', child: widgetList.elementAt(_selectedIndex)),
          drawer: CustomDrawer(
            widthPercent: 0.7,
            child: MyDrawer(),
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: Theme.of(context).primaryColor,
              unselectedItemColor: Color(0xff8b8b8b),
              unselectedLabelStyle: TextStyle(color: Color(0xff8b8b8b)),
              unselectedFontSize: ScreenUtil().setSp(20.0),
              selectedFontSize: ScreenUtil().setSp(20.0),
              currentIndex: _selectedIndex,
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
              ]),
        ));
  }

  void selectedBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }
}
