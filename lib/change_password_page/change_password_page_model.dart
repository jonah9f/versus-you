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
  late FocusNode newPasswordPasswordVisibilityFocusNode;
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for UpdatePassword widget.
  late FocusNode updatePasswordPasswordVisibilityFocusNode;
  FocusNode? updatePasswordFocusNode;
  TextEditingController? updatePasswordTextController;
  late bool updatePasswordVisibility;
  String? Function(BuildContext, String?)?
      updatePasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    newPasswordPasswordVisibilityFocusNode = FocusNode();
    newPasswordVisibility = false;
    updatePasswordPasswordVisibilityFocusNode = FocusNode();
    updatePasswordVisibility = false;
  }

  @override
  void dispose() {
    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();
    newPasswordPasswordVisibilityFocusNode.dispose();
    updatePasswordFocusNode?.dispose();
    updatePasswordTextController?.dispose();
    updatePasswordPasswordVisibilityFocusNode.dispose();
  }
}
