import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/inherit_context.dart';

class AvatarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inheritedContext = InheritedContext.of(context);
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(12.0)),
        child: Builder(
            builder: (context) => GestureDetector(
                onTap: inheritedContext.openDrawer,
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i2.hdslb.com/bfs/face/9e279be66273dc97d82a6c8ebecf3d78548f85b6.jpg")))));
  }
}
