import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }

  void deccrement() {
    counter--;
    notifyListeners();
  }
}

