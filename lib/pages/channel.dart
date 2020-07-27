
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              title: Text("频道"),
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
        ));
  }
}
