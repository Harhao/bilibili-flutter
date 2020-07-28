import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/entry.dart';
import '../pages/search.dart';

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