import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/avatar_menu.dart';
import '../config/customIcon.dart';

class MemberShop extends StatefulWidget {
  @override
  _MemberShopState createState() => _MemberShopState();
}

class _MemberShopState extends State<MemberShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 1.0,
          leading: AvatarMenu(),
          title: Text("会员购",style: TextStyle(color: Colors.white),),
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
          ]),
      body: Center(
        child: Text("据中")
      ),
    );
  }
}
