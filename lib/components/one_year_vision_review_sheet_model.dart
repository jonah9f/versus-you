import '/flutter_flow/flutter_flow_util.dart';
import 'one_year_vision_review_sheet_widget.dart'
    show OneYearVisionReviewSheetWidget;
import 'package:flutter/material.dart';

class OneYearVisionReviewSheetModel
    extends FlutterFlowModel<OneYearVisionReviewSheetWidget> {
  ///  Local state fields for this component.

  String? oneYearResult;

  ///  State fields for stateful widgets in this component.

  // State field(s) for mostProud2 widget.
  FocusNode? mostProud2FocusNode;
  TextEditingController? mostProud2TextController;
  String? Function(BuildContext, String?)? mostProud2TextControllerValidator;
  // State field(s) for heldBack2 widget.
  FocusNode? heldBack2FocusNode;
  TextEditingController? heldBack2TextController;
  String? Function(BuildContext, String?)? heldBack2TextControllerValidator;
  // State field(s) for newVision2 widget.
  FocusNode? newVision2FocusNode;
  TextEditingController? newVision2TextController;
  String? Function(BuildContext, String?)? newVision2TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mostProud2FocusNode?.dispose();
    mostProud2TextController?.dispose();

    heldBack2FocusNode?.dispose();
    heldBack2TextController?.dispose();

    newVision2FocusNode?.dispose();
    newVision2TextController?.dispose();
  }
}
