import 'package:flutter/material.dart';

class MyCustomNotifier extends ValueNotifier<int> {

  MyCustomNotifier(int value) : super(value);

  void updateString(int newText){
    value = newText;
    notifyListeners();
  }
  
}