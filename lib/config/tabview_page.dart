import 'package:flutter/cupertino.dart';

import '../component/recomment.dart';
import '../component/living.dart';
import '../component/purse.dart';
import '../component/movie.dart';
import '../component/song.dart';
import '../component/comic.dart';


class TabViewPage {
  static final List<Widget> list= <Widget> [
    Living(),
    Recomment(),
    Purse(),
    Movie(),
    Song(),
    Comic()
  ];
}