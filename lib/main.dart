import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'store/theme._setting.dart';
import 'pages/theme_wrap.dart';

void main() {
  ThemeSetting appTheme = ThemeSetting();
  setAvoidWarning();

  return runApp(MultiProvider(
      providers: [ChangeNotifierProvider.value(value: appTheme)],
      child: ThemeWrap()));
}

void setAvoidWarning() {
  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
}
