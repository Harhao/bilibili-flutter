import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/customIcon.dart';

class VideoCard extends StatefulWidget {
  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          border: Border.all(width: ScreenUtil().setWidth(1), color: Color(0xffdcdcdc)),
          borderRadius: BorderRadius.all(
            Radius.circular(ScreenUtil().setWidth(12.0)),
          ),
        ),
        child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Stack(
                  overflow: Overflow.clip,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ScreenUtil().setWidth(12.0)),
                            topRight: Radius.circular(ScreenUtil().setWidth(12.0))),
                        child: Image.network(
                            "http://i2.hdslb.com/bfs/archive/fb9dfd1e58ffd9e162476113ab1705aadad3a167.jpg@480w_270h_1c")),
                    Positioned(
                        bottom: ScreenUtil().setHeight(15.0),
                        left: ScreenUtil().setWidth(12.0),
                        right: ScreenUtil().setWidth(12.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      CustomIcon.playIcon,
                                      size: ScreenUtil().setSp(35.0),
                                      color: Colors.white,
                                    ),
                                    Padding(padding: EdgeInsets.only(left: ScreenUtil().setWidth(12.0),)),
                                    Text("398",style: TextStyle(color: Colors.white),),
                                    Padding(padding: EdgeInsets.only(right: ScreenUtil().setWidth(12.0),)),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      CustomIcon.comment,
                                      size: ScreenUtil().setSp(35.0),
                                      color: Colors.white,
                                    ),
                                    Padding(padding: EdgeInsets.only(left: ScreenUtil().setWidth(12.0))),
                                    Text("298",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ]),
                              Text(
                                "13:04",
                                style: TextStyle(
                                    color: Colors.white,
                                  ),
                              )
                            ]))
                  ],
                ),
                Container(
                  child: Text(
                    "官宣中国第二艘国产航母已在上海开工已在上海开工",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: ScreenUtil().setSp(30.0)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(8.0), horizontal: ScreenUtil().setWidth(15.0)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text("社科人文.辽宁舰",style: TextStyle(color: Color(0xff8d8d8d),fontSize: ScreenUtil().setSp(20.0)),)],
                      ),
                      IconButton(
                          icon: Icon(
                            CustomIcon.dot,
                            color: Color(0xff8d8d8d),
                            size: ScreenUtil().setSp(30.0),
                          ),
                          iconSize: ScreenUtil().setSp(30.0),
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.topRight,
                          onPressed: null)
                    ],
                  ),
                )
              ],
            )));
  }
}
