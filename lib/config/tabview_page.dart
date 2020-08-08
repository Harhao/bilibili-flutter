import 'package:flutter/cupertino.dart';

import '../container/recomment.dart';
import '../container/living.dart';
import '../container/purse.dart';
import '../container/movie.dart';
import '../container/song.dart';
import '../container/comic.dart';
import '../container/channel_view.dart';
import '../container/dynamic_living.dart';
import '../container/dynamic_pursue.dart';
import '../container/dynamic_recomment.dart';


class TabViewPage {
  static final List<Widget> list= <Widget> [
    Living(),
    Recomment(),
    Purse(),
    Movie(),
    Song(),
    Comic()
  ];
  static final List<Widget> channelList= <Widget> [
    ChannelView()
  ];
  static final List<Widget> dynamiclList= <Widget> [
    DynamicLiving(),
    DynamicRecomment(),
    DynamicRecomment()
  ];
}