import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../store/theme._setting.dart';
import '../config/customIcon.dart';


class ThemeModeSetting extends StatelessWidget {
  List<Widget> _changeMapToList(ThemeSetting appTheme, BuildContext context) {
    List<Widget> list = <Widget> [];
    ThemeSetting.themeList.forEach((String key, Color value) {
      Widget customWidget = ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Container(
            width: ScreenUtil().setWidth(50.0),
            height: ScreenUtil().setWidth(50.0),
            decoration: BoxDecoration(
              color: value
            ),
            child: Text("")
          )
        ),
        title: Text("$key"),
        // onTap: () => appTheme.changePrimaryColor(key),
        onTap: () {
          appTheme.changePrimaryColor(key);
          Navigator.of(context).pop();
        },
      );
      list.add(customWidget);
    });
    return list;
  }
  @override
  Widget build(BuildContext context) {
    ThemeSetting appTheme = Provider.of<ThemeSetting>(context);
    List<Widget> listWidget = _changeMapToList(appTheme,context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(CustomIcon.arrowLeft), onPressed: () => Navigator.of(context).pop()),
        title: Text("主题颜色", style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: listWidget.length,
        itemBuilder: (BuildContext context, int index) {
          return listWidget[index];
        }
      )
    );
  }
}