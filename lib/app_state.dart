import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _loginEmailState = false;
  bool get loginEmailState => _loginEmailState;
  set loginEmailState(bool value) {
    _loginEmailState = value;
  }

  bool _loginPasswordState = false;
  bool get loginPasswordState => _loginPasswordState;
  set loginPasswordState(bool value) {
    _loginPasswordState = value;
  }
}
