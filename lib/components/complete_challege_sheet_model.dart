import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'complete_challege_sheet_widget.dart' show CompleteChallegeSheetWidget;
import 'package:flutter/material.dart';

class CompleteChallegeSheetModel
    extends FlutterFlowModel<CompleteChallegeSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ChallengeLogsRecord? createdChallengeLog;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ChallengeLogsRecord>? existingLogs;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  ChallengesRecord? freshChallengeDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
