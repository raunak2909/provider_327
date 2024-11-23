import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  ///data
  int _counter = 0;

  void incrementCount(){
    _counter++;
    notifyListeners();
  }

  int getCountValue() => _counter;


}