import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainModel extends ChangeNotifier {
  String text = "textで";

  void changeText() {
    text = "変更ずみ";
    notifyListeners();
  }
}
