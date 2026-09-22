import '/flutter_flow/flutter_flow_util.dart';
import 'edit_milestone_sheet_widget.dart' show EditMilestoneSheetWidget;
import 'package:flutter/material.dart';

class EditMilestoneSheetModel
    extends FlutterFlowModel<EditMilestoneSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
