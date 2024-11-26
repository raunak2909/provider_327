import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier{

  ///data
  List<Map<String, dynamic>> _mData = [];

  ///events
  ///add
  void addData(){
    _mData.add({
      "name" : "Raman",
      "mobNo" : "9383756375"
    });
    notifyListeners();
  }

  List<Map<String, dynamic>> getData() => _mData;

  ///update
  ///delete

  /// DB with provider

}