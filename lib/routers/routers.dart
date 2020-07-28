import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String search = '/search';
  static String theme = '/theme';

  static void configureRoute(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return Text("没有找到widget");
    });
    router.define(root, handler: EntryPageHandler, transitionType: null);
    router.define(search, handler: SearchPageHandler, transitionType: null);
    router.define(theme, handler: ThemePageHandler, transitionType: null);
  }
}
