import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'store/theme._setting.dart';
import 'routers/routers.dart';
import 'routers/application.dart';
import 'pages/entry.dart';

void main() {
  final router = Router();
  Routes.configureRoute(router);
  Application.router = router;
  ThemeSetting appTheme = ThemeSetting();
  setAvoidWarning();

  return runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: appTheme)
      ],
      child: MaterialApp(
        title: '哔哩哔哩<(￣ ﹌ ￣)@m  ~bilibili',
        // theme: ThemeData(primaryColor: Color(0xfffb7299)),
        theme: ThemeData(primaryColor: appTheme.primaryColor),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Application.router.generator,
        home: Entry(),
      )));
}

void setAvoidWarning() {
  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
}
