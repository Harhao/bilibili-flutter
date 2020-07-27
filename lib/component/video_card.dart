import 'package:flutter/material.dart';
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
          border: Border.all(width: 1, color: Color(0xffdcdcdc)),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
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
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0)),
                        child: Image.network(
                            "http://i2.hdslb.com/bfs/archive/fb9dfd1e58ffd9e162476113ab1705aadad3a167.jpg@480w_270h_1c")),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Row(children: <Widget>[
                          Row(children: <Widget>[]),
                          Text("13:04")
                        ]))
                  ],
                ),
                Container(
                  child: Text(
                    "官宣中国第二艘国产航母已在上海开工已在上海开工",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[Text("社科人文.辽宁舰")],
                      ),
                      IconButton(
                          icon: Icon(
                            CustomIcon.dot,
                            color: Color(0xff8d8d8d),
                            size: 18.0,
                          ),
                          iconSize: 18.0,
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.centerRight,
                          onPressed: null)
                    ],
                  ),
                )
              ],
            )));
  }
}
