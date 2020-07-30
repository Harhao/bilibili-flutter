import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ThemeSetting with ChangeNotifier {
  static Map<String, Color> themeList = {
    'powder': Color(0xfffb7299),
    'auntRed': Color(0xfff24137),
    'eggYellow': Color(0xffffbf23),
    'treeGreen': Color(0xff8ac24a),
    'skyBlue': Color(0xff1f95f2),
    'gayPurple': Color(0xff9d28b4),
    'night': Color(0xff0e0e0e),
    'white': Color(0xffffffff)
  };
  String themeKey = 'treeGreen';
  void changePrimaryColor(String themeKey) {
    this.themeKey = themeKey;
    notifyListeners();
  }
  Color get primaryColor => ThemeSetting.themeList[themeKey];
}
