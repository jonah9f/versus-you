import '/backend/backend.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'goals_page_widget.dart' show GoalsPageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class GoalsPageModel extends FlutterFlowModel<GoalsPageWidget> {
  ///  Local state fields for this page.

  int dailyScoreChange = 0;

  int storedTodayCompleted = 0;

  int storesTodayAttempted = 0;

  int storedCurrentStreak = 0;

  int? focusSeconds = 1500;

  bool focusRunning = false;

  bool focusPaused = false;

  int focusMinutesToday = 0;

  int selectedFocusMinutes = 25;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in GoalsPage widget.
  UsersRecord? freshUserDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in GoalsPage widget.
  List<ChallengesRecord>? challengesToReset;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 1500000;
  int timerMilliseconds = 1500000;
  String timerValue = StopWatchTimer.getDisplayTime(
    1500000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    timerController.dispose();
    navbarModel.dispose();
  }
}
