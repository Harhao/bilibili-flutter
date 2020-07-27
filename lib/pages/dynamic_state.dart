import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../component/navigation_bar.dart';
class DynamicState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("DynamicState"),
      bottomNavigationBar: NavigationBar(selectedIndex: 2),
    );
  }
}