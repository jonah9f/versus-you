import '/flutter_flow/flutter_flow_util.dart';
import 'six_month_vision_review_sheet_widget.dart'
    show SixMonthVisionReviewSheetWidget;
import 'package:flutter/material.dart';

class SixMonthVisionReviewSheetModel
    extends FlutterFlowModel<SixMonthVisionReviewSheetWidget> {
  ///  Local state fields for this component.

  String? sixMonthResult;

  ///  State fields for stateful widgets in this component.

  // State field(s) for mostProud widget.
  FocusNode? mostProudFocusNode;
  TextEditingController? mostProudTextController;
  String? Function(BuildContext, String?)? mostProudTextControllerValidator;
  // State field(s) for heldBack widget.
  FocusNode? heldBackFocusNode;
  TextEditingController? heldBackTextController;
  String? Function(BuildContext, String?)? heldBackTextControllerValidator;
  // State field(s) for newVision widget.
  FocusNode? newVisionFocusNode;
  TextEditingController? newVisionTextController;
  String? Function(BuildContext, String?)? newVisionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mostProudFocusNode?.dispose();
    mostProudTextController?.dispose();

    heldBackFocusNode?.dispose();
    heldBackTextController?.dispose();

    newVisionFocusNode?.dispose();
    newVisionTextController?.dispose();
  }
}
