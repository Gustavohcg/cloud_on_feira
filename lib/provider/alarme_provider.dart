import 'package:flutter/material.dart';

class AlarmeProvider extends ChangeNotifier {
  bool _alarme = false;

  bool get alarme => _alarme;

  setAlarme(bool val) {
    _alarme = val;
    notifyListeners();
  }
}
