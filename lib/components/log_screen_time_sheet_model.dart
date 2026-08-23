import '/flutter_flow/flutter_flow_util.dart';
import 'log_screen_time_sheet_widget.dart' show LogScreenTimeSheetWidget;
import 'package:flutter/material.dart';

class LogScreenTimeSheetModel
    extends FlutterFlowModel<LogScreenTimeSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for HoursText widget.
  FocusNode? hoursTextFocusNode;
  TextEditingController? hoursTextTextController;
  String? Function(BuildContext, String?)? hoursTextTextControllerValidator;
  // State field(s) for MinText widget.
  FocusNode? minTextFocusNode;
  TextEditingController? minTextTextController;
  String? Function(BuildContext, String?)? minTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    hoursTextFocusNode?.dispose();
    hoursTextTextController?.dispose();

    minTextFocusNode?.dispose();
    minTextTextController?.dispose();
  }
}
