import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/entry.dart';
import '../pages/search.dart';
import '../pages/theme_mode_setting.dart';

Handler EntryPageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return Entry();
  }
);
Handler SearchPageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return Search();
  }
);
Handler ThemePageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return ThemeModeSetting();
  }
);