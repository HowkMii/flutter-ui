import 'package:flutter/material.dart';

class MyColor extends InheritedWidget {
 
  final Color color;
  final Widget child;
  MyColor({
    @required this.color,
    @required this.child,
  });
  @override
  bool updateShouldNotify(MyColor oldWidget) {
    return color != oldWidget.color;

  }
  static MyColor of(context) => context.inheritFromWidgetOfExactType(MyColor);

}