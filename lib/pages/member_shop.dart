import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/navigation_bar.dart';
class MemberShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("MemberShop"),
      bottomNavigationBar: NavigationBar(selectedIndex: 3),
    );
  }
}
