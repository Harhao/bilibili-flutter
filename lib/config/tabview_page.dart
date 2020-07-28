import 'package:flutter/cupertino.dart';

import '../component/recomment.dart';
import '../component/living.dart';
import '../component/purse.dart';
import '../component/movie.dart';
import '../component/song.dart';
import '../component/comic.dart';
import '../component/channel_view.dart';
import '../component/dynamic_living.dart';
import '../component/dynamic_pursue.dart';
import '../component/dynamic_recomment.dart';


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