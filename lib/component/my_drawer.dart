import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../store/theme._setting.dart';
import '../config/drawer_list.dart';
import '../config/customIcon.dart';
import '../routers/application.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeSetting appTheme = Provider.of<ThemeSetting>(context);
    return Stack(
      children: <Widget>[
        ListView(padding: EdgeInsets.zero, children: <Widget>[
          Container(
              padding: EdgeInsets.only(
                  top: 35.0, left: 15.0, right: 15.0, bottom: 10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).primaryColor.withOpacity(0.9),
                        BlendMode.srcOver)),
              ),
              child: Column(children: <Widget>[
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        height: 70.0,
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i2.hdslb.com/bfs/face/9e279be66273dc97d82a6c8ebecf3d78548f85b6.jpg")),
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                CustomIcon.wallet,
                                color: Colors.white,
                                size: 28.0,
                              ),
                              onPressed: null,
                            ),
                            IconButton(
                              icon: Icon(
                                CustomIcon.scan,
                                color: Colors.white,
                                size: 28.0,
                              ),
                              onPressed: null,
                            ),
                          ])
                    ]),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Harhao",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    Padding(padding: EdgeInsets.only(right: 10.0)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Text(
                        "LV3",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 10.0)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withAlpha(1),
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Text(
                        "正式会员",
                        style:
                            TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                Row(children: <Widget>[
                  Text(
                    "B币：0.0",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  Text(
                    "硬币：294.0",
                    style: TextStyle(color: Colors.white),
                  ),
                ]),
              ])),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 0.3, color: Color(0xff8d8d8d)))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            RichText(
                                text: TextSpan(
                                    text: '我的大会员',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold))),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                            Text(
                              "了解更多权益",
                              style: TextStyle(
                                  fontSize: 15.0, color: Color(0xffbdbdbd)),
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text(
                          "番剧抢先看，4K超清体验",
                          style: TextStyle(fontSize: 15.0),
                        )
                      ],
                    ),
                    IconButton(
                        icon: Icon(CustomIcon.arrowRight), onPressed: null)
                  ])),
          Container(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              margin: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  border: Border(
                      bottom:
                          BorderSide(width: 0.3, color: Color(0xff8d8d8d)))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(children: <Widget>[Text("0"), Text("动态")]),
                    Column(children: <Widget>[Text("27"), Text("关注")]),
                    Column(children: <Widget>[Text("0"), Text("粉丝")]),
                  ])),
          // ignore: sdk_version_ui_as_code
          ...DrawerList.list,
          Padding(padding: EdgeInsets.only(top: 60.0)),
        ]),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(width: 0.3, color: Color(0xff929292)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                      child: Builder(
                          builder: (context) => GestureDetector(
                              onTap: () => Application.router.navigateTo(context, '/theme'),
                              child: Row(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(left: 10.0)),
                                  Icon(
                                    CustomIcon.themeIcon,
                                    color: Color(0xff929292),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10.0)),
                                  Text(
                                    "主题",
                                    style: TextStyle(color: Color(0xff929292)),
                                  )
                                ],
                              )))),
                  Flexible(
                      child: Builder(
                          builder: (context) => GestureDetector(
                              onTap: null,
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    CustomIcon.settting,
                                    color: Color(0xff929292),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10.0)),
                                  Text(
                                    "设置",
                                    style: TextStyle(color: Color(0xff929292)),
                                  )
                                ],
                              )))),
                  Flexible(
                      child: Builder(
                          builder: (context) => GestureDetector(
                              onTap: () => appTheme.changePrimaryColor('night'),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    CustomIcon.nightMode,
                                    color: Color(0xff929292),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10.0)),
                                  Text(
                                    "夜间模式",
                                    style: TextStyle(color: Color(0xff929292)),
                                  )
                                ],
                              )))),
                ],
              ),
            ))
      ],
    );
  }
}
