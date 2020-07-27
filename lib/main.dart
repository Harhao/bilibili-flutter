import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'routers/routers.dart';
import 'routers/application.dart';
import 'pages/entry.dart';

void main() {
  final router = Router();
  Routes.configureRoute(router);
  Application.router = router;
  return runApp(
      MaterialApp(
        title: '哔哩哔哩<(￣ ﹌ ￣)@m  ~bilibili',
        theme: ThemeData(primaryColor: Color(0xfffb7299)),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Application.router.generator,
        home: Entry(),
    )
  );
}
