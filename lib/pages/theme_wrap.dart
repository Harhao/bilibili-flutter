import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluro/fluro.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import '../store/theme._setting.dart';
import '../routers/routers.dart';
import '../routers/application.dart';
import '../pages/entry.dart';

class ThemeWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routes.configureRoute(router);
    Application.router = router;
    ThemeSetting appTheme = Provider.of<ThemeSetting>(context);
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    return MaterialApp(
      title: '哔哩哔哩<(￣ ﹌ ￣)@m  ~bilibili',
      theme: ThemeData(primaryColor: appTheme.primaryColor),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      home: Entry(),
    );
  }
}
