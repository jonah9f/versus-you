import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  String _pendingChallengeId = '';
  String get pendingChallengeId => _pendingChallengeId;
  set pendingChallengeId(String value) {
    _pendingChallengeId = value;
  }

  DocumentReference? _pendingChallengeRef;
  DocumentReference? get pendingChallengeRef => _pendingChallengeRef;
  set pendingChallengeRef(DocumentReference? value) {
    _pendingChallengeRef = value;
  }
}
