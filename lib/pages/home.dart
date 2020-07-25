import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/customIcon.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
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
              centerTitle: true,
              elevation: 1.0,
              leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Builder(
                      builder: (context) => GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://i2.hdslb.com/bfs/face/9e279be66273dc97d82a6c8ebecf3d78548f85b6.jpg"))))),
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
                      labelStyle: TextStyle(fontSize: 20.0),
                      labelColor: Theme.of(context).primaryColor,
                      unselectedLabelColor: Color(0xff8a8a8a),
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3.0,
                      tabs: Tabs,
                    ),
                  ))),
          body: TabBarView(
              children: Tabs.map((Tab tab) {
            return Center(child: Text(tab.text));
          }).toList()),
          drawer: Drawer(
            child: ListView(children: <Widget>[]),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Theme.of(context).primaryColor,
            unselectedItemColor: Color(0xff8b8b8b),
            unselectedLabelStyle: TextStyle(color:Color(0xff8b8b8b)),
            unselectedFontSize: 14.0,
            currentIndex: _selectedIndex,
            onTap: selectedBottomBar,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(CustomIcon.home),title: Text('首页')),
              BottomNavigationBarItem(icon: Icon(CustomIcon.channel),title: Text('频道')),
              BottomNavigationBarItem(icon: Icon(CustomIcon.dynamicState),title: Text('动态')),
              BottomNavigationBarItem(icon: Icon(CustomIcon.memberShop),title: Text('会员购')),
            ]
          ),
        ));
  }

  void selectedBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
