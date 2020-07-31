import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../component/avatar_menu.dart';
import '../config/tabview_page.dart';
import '../config/customIcon.dart';

class Channel extends StatefulWidget {
  @override
  _ChannelState createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
  @override
  Widget build(BuildContext context) {
    final List<Tab> Tabs = <Tab>[
      Tab(text: '频道'),
    ];
    return DefaultTabController(
        length: Tabs.length,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              elevation: 1.0,
              leading: AvatarMenu(),
              title: Text("频道",style: TextStyle(color: Colors.white),),
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
                  child: Material(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        TabBar(
                          isScrollable: true,
                          labelStyle: TextStyle(fontSize: ScreenUtil().setSp(32.0)),
                          unselectedLabelStyle: TextStyle(fontSize: ScreenUtil().setSp(32.0)),
                          labelColor: Theme.of(context).primaryColor,
                          unselectedLabelColor: Color(0xff8a8a8a),
                          indicatorColor: Theme.of(context).primaryColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 3.0,
                          tabs: Tabs,
                        ),
                        IconButton(icon: Icon(Icons.menu), onPressed: null)
                      ])))),
          body: TabBarView(children: TabViewPage.channelList),
        ));
  }
}
