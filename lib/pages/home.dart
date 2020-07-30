import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../component/avatar_menu.dart';
import '../config/tabview_page.dart';
import '../config/customIcon.dart';
import '../routers/application.dart';

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
                  padding: EdgeInsets.all(ScreenUtil().setWidth(10.0)),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    backgroundBlendMode: BlendMode.hardLight,
                    borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setWidth(30.0))),
                  ),
                  child: Builder(
                      builder: (context) => GestureDetector(
                          onTap: _navigateToSearchPage,
                          child: Row(mainAxisSize: MainAxisSize.min, children: <
                              Widget>[
                            Padding(
                                padding: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(10.0))),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: ScreenUtil().setSp(40.0),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(18.0))),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text(
                                  "王者荣耀职业联赛",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenUtil().setSp(32.0),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(30.0))),
                          ])))),
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
                  preferredSize: Size.fromHeight(ScreenUtil().setHeight(95.0)),
                  // preferredSize: Size(MediaQuery.of(context).size.width,
                  //     ScreenUtil().setHeight(95.0)),
                  child: Material(
                    color: Colors.white,
                    child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: TabBar(
                          isScrollable: true,
                          labelStyle:
                              TextStyle(fontSize: ScreenUtil().setSp(32.0)),
                          unselectedLabelStyle:
                              TextStyle(fontSize: ScreenUtil().setSp(32.0)),
                          labelColor: Theme.of(context).primaryColor,
                          unselectedLabelColor: Color(0xff8a8a8a),
                          indicatorColor: Theme.of(context).primaryColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 3.0,
                          tabs: Tabs,
                        )),
                  ))),
          body: TabBarView(children: <Widget>[
            // ignore: sdk_version_ui_as_code
            ...TabViewPage.list
          ]),
        ));
  }

  void _navigateToSearchPage() {
    Application.router
        .navigateTo(context, '/search', transition: TransitionType.fadeIn);
  }
}
