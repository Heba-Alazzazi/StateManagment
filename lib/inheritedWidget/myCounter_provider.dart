// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  CounterProvider({Key? key,required this.child}) : super(child: child)  ;
  Widget child;
  int counter = 0;
//get counter =>_counter;
  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }
  //static int get getCounter => counter;
  static InheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}