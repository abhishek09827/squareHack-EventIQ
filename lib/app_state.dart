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

  String _aiRes = 'a';
  String get aiRes => _aiRes;
  set aiRes(String value) {
    _aiRes = value;
  }

  String _aiEvent = 'a';
  String get aiEvent => _aiEvent;
  set aiEvent(String value) {
    _aiEvent = value;
  }

  String _visionResult = 'a';
  String get visionResult => _visionResult;
  set visionResult(String value) {
    _visionResult = value;
  }

  String _groupRes = 'a';
  String get groupRes => _groupRes;
  set groupRes(String value) {
    _groupRes = value;
  }
}
