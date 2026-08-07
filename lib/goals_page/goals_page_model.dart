import '/backend/backend.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'goals_page_widget.dart' show GoalsPageWidget;
import 'package:flutter/material.dart';

class GoalsPageModel extends FlutterFlowModel<GoalsPageWidget> {
  ///  Local state fields for this page.

  int dailyScoreChange = 0;

  int storedTodayCompleted = 0;

  int storesTodayAttempted = 0;

  int storedCurrentStreak = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in GoalsPage widget.
  UsersRecord? freshUserDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in GoalsPage widget.
  List<ChallengesRecord>? challengesToReset;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
