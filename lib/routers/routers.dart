import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String channel = '/channel';
  static String dynamicState = '/dynamicState';
  static String memberShop = '/memberShop';

  static void configureRoute(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return Text("没有找到widget");
    });
    router.define(channel, handler: ChannelPageHandler, transitionType: null);
    router.define(dynamicState,
        handler: DynamicStatePageHandler, transitionType: null);
    router.define(memberShop,
        handler: MemberShopPageHandler, transitionType: null);
    router.define(root, handler: HomePageHandler, transitionType: null);
  }
}
