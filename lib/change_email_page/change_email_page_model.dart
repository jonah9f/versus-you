import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'change_email_page_widget.dart' show ChangeEmailPageWidget;
import 'package:flutter/material.dart';

class ChangeEmailPageModel extends FlutterFlowModel<ChangeEmailPageWidget> {
  ///  Local state fields for this page.

  String selectedAppearanceMode = 'dark';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
