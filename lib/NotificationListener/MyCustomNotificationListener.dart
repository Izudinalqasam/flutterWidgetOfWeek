import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCustomNotificationListener extends Notification {

  String myValue;

  MyCustomNotificationListener(String value): myValue = value;

}