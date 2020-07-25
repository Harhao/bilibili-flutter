import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../config/customIcon.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.zero, children: <Widget>[
      Container(
          padding:
              EdgeInsets.only(top: 35.0, left: 15.0, right: 15.0, bottom: 10.0),
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
                      color: Color(0xffbd778b),
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Text(
                    "正式会员",
                    style: TextStyle(color: Colors.white),
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
            ])
          ])),
    ]);
  }
}
