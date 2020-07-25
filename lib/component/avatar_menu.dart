import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AvatarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Builder(
                      builder: (context) => GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://i2.hdslb.com/bfs/face/9e279be66273dc97d82a6c8ebecf3d78548f85b6.jpg")))));
  }
}