
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "../component/my_drawer.dart";
import '../component/avatar_menu.dart';
import '../config/tabview_page.dart';
import '../component/navigation_bar.dart';
import '../config/customIcon.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final List<Tab> Tabs = <Tab>[
      Tab(text: '直播'),
      Tab(text: '推荐'),
      Tab(text: '追番'),
      Tab(text: '影视'),
      Tab(text: '说唱区'),
      Tab(text: '动漫'),
    ];
    return DefaultTabController(
        length: Tabs.length,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: false,
              elevation: 1.0,
              leading: AvatarMenu(),
              title: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Color(0xffe5678c),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 8.0)),
                    Icon(
                      Icons.search,
                      color: Colors.white30,
                      size: 26.0,
                    ),
                    Padding(padding: EdgeInsets.only(left: 8.0)),
                    Text(
                      "王者荣耀职业联赛",
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 20.0)),
                  ])),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      CustomIcon.email,
                      color: Colors.white,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      CustomIcon.download,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ],
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(48),
                  child: Material(
                    color: Colors.white,
                    child: TabBar(
                      isScrollable: true,
                      labelStyle: TextStyle(fontSize: 18.0),
                      labelColor: Theme.of(context).primaryColor,
                      unselectedLabelColor: Color(0xff8a8a8a),
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3.0,
                      tabs: Tabs,
                    ),
                  ))),
          body: TabBarView(children:<Widget>[
            // ignore: sdk_version_ui_as_code
            ...TabViewPage.list
          ]),
          drawer: Drawer(
            child: MyDrawer(),
          ),
          bottomNavigationBar: NavigationBar(selectedIndex: 0) ,
        ));
  }
}
