import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier {
  final String title;
  BaseViewModel(this.title);

  void update() => notifyListeners();
}
