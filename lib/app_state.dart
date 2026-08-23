import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pendingChallengeId =
          prefs.getString('ff_pendingChallengeId') ?? _pendingChallengeId;
    });
    _safeInit(() {
      _pendingChallengeRef = prefs.getString('ff_pendingChallengeRef')?.ref ??
          _pendingChallengeRef;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _pendingChallengeId = '';
  String get pendingChallengeId => _pendingChallengeId;
  set pendingChallengeId(String value) {
    _pendingChallengeId = value;
    prefs.setString('ff_pendingChallengeId', value);
  }

  DocumentReference? _pendingChallengeRef;
  DocumentReference? get pendingChallengeRef => _pendingChallengeRef;
  set pendingChallengeRef(DocumentReference? value) {
    _pendingChallengeRef = value;
    value != null
        ? prefs.setString('ff_pendingChallengeRef', value.path)
        : prefs.remove('ff_pendingChallengeRef');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
