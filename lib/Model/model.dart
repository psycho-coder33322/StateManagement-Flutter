import 'package:flutter/widgets.dart';

class Model extends ChangeNotifier {
  int cost;
  Model(int cost) {
    this.cost = cost;
  }

  changeModel(int cost) {
    this.cost = cost;
    notifyListeners();
  }
}
