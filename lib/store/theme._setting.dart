import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ThemeSetting with ChangeNotifier {
  static Map<String, Color> themeList = {
    'powder': Color(0xfffb7299),
    'auntRed': Color(0xff000000),
    'eggYellow': Color(0xff000000),
    'treeGreen': Color(0xff000000),
    'skyBlue': Color(0xff000000),
    'gayPurple': Color(0xff000000),
    'night': Color(0xff000000)
  };
  String themeKey = 'powder';

  void changePrimaryColor(String themeKey) {
    print('====> $themeKey');
    themeKey = themeKey;
    notifyListeners();
  }

  get primaryColor => ThemeSetting.themeList[themeKey];
}
