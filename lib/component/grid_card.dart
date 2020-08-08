import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key key, this.url, this.title}) : super(key: key);
  final String url;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Image.network(
            url,
            width: ScreenUtil().setWidth(500.0),
            height: ScreenUtil().setHeight(500.0),
          )),
          Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(2.0)),
          ),
          Text(title,style: TextStyle(
            
          ),),
        ],
      ),
    );
  }
}
