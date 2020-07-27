import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/home.dart';
import '../pages/dynamic_state.dart';
import '../pages/channel.dart';
import '../pages/member_shop.dart';

Handler HomePageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return Home();
  }
);
Handler DynamicStatePageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return DynamicState();
  }
);
Handler ChannelPageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return Channel();
  }
);
Handler MemberShopPageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return MemberShop();
  }
);