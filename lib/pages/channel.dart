import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/navigation_bar.dart';
class Channel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("1"),
      bottomNavigationBar: NavigationBar(selectedIndex: 1),
    );
  }
}