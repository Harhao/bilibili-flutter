import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'browser.dart';
import '../store/theme._setting.dart';
import '../config/drawer_list.dart';
import '../config/customIcon.dart';
import '../routers/application.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String barcode = "";
  Future scanCode() async {
    // try {
    //   String barcode = await BarcodeScanner.scan();
    //   print('barCode is ==============> barcode');
      // setState(() => this.barcode = barcode);
      // Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      //   return new Browser(
      //     url: "https://flutter-io.cn/",
      //     title: "Flutter 中文社区",
      //   );
      // }));
    // } catch (e) {
    //   if (e.code == BarcodeScanner.CameraAccessDenied) {
    //     setState(() {
    //       this.barcode = 'The user did not grant the camera permission!';
    //     });
    //   } else {
    //     setState(() => this.barcode = 'Unknown error: $e');
    //   }
    // }
    // String url =  "https://flutter-io.cn/";
    // String title =  "Flutter 中文社区";
    // Application.router.navigateTo(context, '/webview?title=${Uri.encodeComponent(title)}&url=${Uri.encodeComponent(url)}');
  }

  @override
  Widget build(BuildContext context) {
    ThemeSetting appTheme = Provider.of<ThemeSetting>(context);
    return Stack(
      children: <Widget>[
        ListView(padding: EdgeInsets.zero, children: <Widget>[
          Container(
              padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(70.0),
                  left: ScreenUtil().setWidth(30.0),
                  right: ScreenUtil().setWidth(30.0),
                  bottom: ScreenUtil().setHeight(25.0)),
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
                        width: ScreenUtil().setWidth(130),
                        height: ScreenUtil().setWidth(130),
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
                                size: ScreenUtil().setSp(45.0),
                              ),
                              onPressed: null,
                            ),
                            IconButton(
                              icon: Icon(
                                CustomIcon.scan,
                                color: Colors.white,
                                size: ScreenUtil().setSp(45.0),
                              ),
                              onPressed: scanCode,
                            ),
                          ])
                    ]),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(20.0)),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Harhao",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(35.0)),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            right: ScreenUtil().setWidth(18.0))),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(10.0)),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: ScreenUtil().setWidth(1),
                              color: Colors.white),
                          borderRadius: BorderRadius.all(
                              Radius.circular(ScreenUtil().setWidth(10.0)))),
                      child: Text(
                        "LV3",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            right: ScreenUtil().setWidth(15.0))),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(10.0)),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withAlpha(1),
                          border: Border.all(
                              width: ScreenUtil().setWidth(2),
                              color: Colors.white),
                          borderRadius: BorderRadius.all(
                              Radius.circular(ScreenUtil().setWidth(10.0)))),
                      child: Text(
                        "正式会员",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20.0)),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: ScreenUtil().setHeight(20.0))),
                Row(children: <Widget>[
                  Text(
                    "B币：0.0",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(25.0)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(25.0)),
                  ),
                  Text(
                    "硬币：294.0",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(25.0)),
                  ),
                ]),
              ])),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(20.0),
                  horizontal: ScreenUtil().setWidth(25.0)),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: ScreenUtil().setWidth(1),
                          color: Color(0xff8d8d8d)))),
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
                                        fontSize: ScreenUtil().setSp(35),
                                        fontWeight: FontWeight.bold))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(25.0))),
                            Text(
                              "了解更多权益",
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(28),
                                  color: Color(0xffbdbdbd)),
                            )
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: ScreenUtil().setHeight(20.0))),
                        Text(
                          "番剧抢先看，4K超清体验",
                          style: TextStyle(fontSize: ScreenUtil().setSp(28)),
                        )
                      ],
                    ),
                    IconButton(
                        icon: Icon(CustomIcon.arrowRight), onPressed: null)
                  ])),
          Container(
              padding:
                  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(25.0)),
              margin:
                  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(25.0)),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  border: Border(
                      bottom: BorderSide(
                          width: ScreenUtil().setWidth(1),
                          color: Color(0xff8d8d8d)))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(children: <Widget>[Text("0"), Text("动态")]),
                    Column(children: <Widget>[Text("27"), Text("关注")]),
                    Column(children: <Widget>[Text("0"), Text("粉丝")]),
                  ])),
          // ignore: sdk_version_ui_as_code
          ...DrawerList.list,
          Padding(padding: EdgeInsets.only(top: ScreenUtil().setHeight(100))),
        ]),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: ScreenUtil().setHeight(100),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                          width: ScreenUtil().setWidth(1),
                          color: Color(0xff8d8d8d)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                      child: Builder(
                          builder: (context) => GestureDetector(
                              onTap: () => Application.router
                                  .navigateTo(context, '/theme'),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: ScreenUtil().setWidth(20.0))),
                                  Icon(
                                    CustomIcon.themeIcon,
                                    color: Color(0xff929292),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: ScreenUtil().setWidth(10.0))),
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
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: ScreenUtil().setWidth(10.0))),
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
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: ScreenUtil().setWidth(10.0))),
                                  Text(
                                    "夜间",
                                    style: TextStyle(color: Color(0xff929292)),
                                  ),
                                ],
                              )))),
                ],
              ),
            ))
      ],
    );
  }
}
