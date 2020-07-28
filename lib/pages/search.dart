import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/theme._setting.dart';

class Search extends StatefulWidget {
  @override 
  _SearchState createState() => _SearchState();
}


class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    ThemeSetting appTheme = Provider.of<ThemeSetting>(context);
    print('############ ${appTheme.primaryColor}');
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {
          appTheme.changePrimaryColor('night');
          print('************ ${appTheme.primaryColor}');
        },child: Text('换颜色'))
      )
    );
  }
}