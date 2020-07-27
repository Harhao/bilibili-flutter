import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/entry.dart';

Handler EntryPageHandler = Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> params) {
    return Entry();
  }
);