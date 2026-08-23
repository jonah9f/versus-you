import '/flutter_flow/flutter_flow_util.dart';
import 'log_sleep_sheet_widget.dart' show LogSleepSheetWidget;
import 'package:flutter/material.dart';

class LogSleepSheetModel extends FlutterFlowModel<LogSleepSheetWidget> {
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
