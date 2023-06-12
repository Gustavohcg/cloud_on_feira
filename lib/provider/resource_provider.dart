import 'package:flutter/material.dart';

class ResourceProvider extends ChangeNotifier {
  bool _ativado = false;

  bool get ativado => _ativado;

  set ativado(bool val) {
    _ativado = val;
    notifyListeners();
  }
}
