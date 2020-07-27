import 'package:fluro/fluro.dart';
import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String channel = '/channel';
  static String dynamicState = '/dynamicState';
  static String memberShop = '/memberShop';

  static void configureRoute(Router router) {
    router.define(channel, handler: channelHandler);
  }
}