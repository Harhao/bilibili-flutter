import 'package:flutter/cupertino.dart';

class InheritedContext extends InheritedWidget {
  final Function openDrawer;
  InheritedContext({
    Key key,
    @required this.openDrawer,
    @required Widget child
  }):super(key:key, child:child);
  static InheritedContext of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(InheritedContext);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}