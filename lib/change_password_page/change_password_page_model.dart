import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'change_password_page_widget.dart' show ChangePasswordPageWidget;
import 'package:flutter/material.dart';

class ChangePasswordPageModel
    extends FlutterFlowModel<ChangePasswordPageWidget> {
  ///  Local state fields for this page.

  String selectedAppearanceMode = 'dark';

  ///  State fields for stateful widgets in this page.

  // State field(s) for NewPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for UpdatePassword widget.
  FocusNode? updatePasswordFocusNode;
  TextEditingController? updatePasswordTextController;
  late bool updatePasswordVisibility;
  String? Function(BuildContext, String?)?
      updatePasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    newPasswordVisibility = false;
    updatePasswordVisibility = false;
  }

  @override
  void dispose() {
    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    updatePasswordFocusNode?.dispose();
    updatePasswordTextController?.dispose();
  }
}
