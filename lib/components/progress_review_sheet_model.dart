import '/flutter_flow/flutter_flow_util.dart';
import 'progress_review_sheet_widget.dart' show ProgressReviewSheetWidget;
import 'package:flutter/material.dart';

class ProgressReviewSheetModel
    extends FlutterFlowModel<ProgressReviewSheetWidget> {
  ///  Local state fields for this component.

  String? progressRating = ' ';

  ///  State fields for stateful widgets in this component.

  // State field(s) for whatsWorking widget.
  FocusNode? whatsWorkingFocusNode;
  TextEditingController? whatsWorkingTextController;
  String? Function(BuildContext, String?)? whatsWorkingTextControllerValidator;
  // State field(s) for needsChange widget.
  FocusNode? needsChangeFocusNode;
  TextEditingController? needsChangeTextController;
  String? Function(BuildContext, String?)? needsChangeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    whatsWorkingFocusNode?.dispose();
    whatsWorkingTextController?.dispose();

    needsChangeFocusNode?.dispose();
    needsChangeTextController?.dispose();
  }
}
