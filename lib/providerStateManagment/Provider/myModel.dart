import 'package:flutter/cupertino.dart';

class MyModel {
  int counter = 0;

  void increment() {
    counter++;
    print('add $counter');
  }

  void deccrement() {
    counter--;
    print('sub $counter');
  }
}
