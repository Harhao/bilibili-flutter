import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../store/theme._setting.dart';
class ThemeModeSetting extends StatelessWidget {
  List<Widget> _changeMapToList() {
    List<Widget> list = <Widget> [];
    ThemeSetting.themeList.forEach((String key, Color value) {
      Widget customWidget = ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: value
            ),
            child: Text("")
          )
        ),
        title: Text("$key"),
      );
      list.add(customWidget);
    });
    return list;
  }
  @override
  Widget build(BuildContext context) {
    ThemeSetting appTheme = Provider.of<ThemeSetting>(context);
    List<Widget> listWidget = _changeMapToList();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_left), onPressed: null),
        title: Text("主题颜色"),
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