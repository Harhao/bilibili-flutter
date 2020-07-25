import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customIcon.dart';
class DrawerList {
  static List<Widget> list = <Widget>[
    ListTile(
      leading: Icon(CustomIcon.home, color: Color(0xff929292),),
      title: Text("首页"),
    ),
    ListTile(
      leading: Icon(CustomIcon.history, color: Color(0xff929292),),
      title: Text("历史记录"),
    ),
    ListTile(
      leading: Icon(CustomIcon.download, color: Color(0xff929292),),
      title: Text("下载管理"),
    ),
    ListTile(
      leading: Icon(CustomIcon.collect, color: Color(0xff929292),),
      title: Text("我的收藏"),
    ),
    ListTile(
      leading: Icon(CustomIcon.history, color: Color(0xff929292),),
      title: Text("稍后再看"),
    ),
    ListTile(
      leading: Icon(CustomIcon.publish, color: Color(0xff929292),),
      title: Text("发布"),
    ),
    ListTile(
      leading: Icon(CustomIcon.createHub, color: Color(0xff929292),),
      title: Text("创作中心"),
    ),
    ListTile(
      leading: Icon(CustomIcon.activityIcon, color: Color(0xff929292),),
      title: Text("热门活动"),
    ),
    ListTile(
      leading: Icon(CustomIcon.liveRoom, color: Color(0xff929292),),
      title: Text("直播中心"),
    ),
    ListTile(
      leading: Icon(CustomIcon.luckBag, color: Color(0xff929292),),
      title: Text("邀好友赚红包"),
    ),
    ListTile(
      leading: Icon(CustomIcon.flow, color: Color(0xff929292),),
      title: Text("免流量费"),
    ),
    ListTile(
      leading: Icon(CustomIcon.orderMenu, color: Color(0xff929292),),
      title: Text("我的订单"),
    ),
    ListTile(
      leading: Icon(CustomIcon.memberShop, color: Color(0xff929292),),
      title: Text("会员购中心"),
    ),
    ListTile(
      leading: Icon(CustomIcon.caller, color: Color(0xff929292),),
      title: Text("联系客服"),
    ),
    ListTile(
      leading: Icon(CustomIcon.protected, color: Color(0xff929292),),
      title: Text("青少年模式"),
    ),
  ];
}
