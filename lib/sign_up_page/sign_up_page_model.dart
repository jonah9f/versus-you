import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:flutter/material.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for signUpNameField widget.
  FocusNode? signUpNameFieldFocusNode;
  TextEditingController? signUpNameFieldTextController;
  String? Function(BuildContext, String?)?
      signUpNameFieldTextControllerValidator;
  // State field(s) for signUpEmailField widget.
  FocusNode? signUpEmailFieldFocusNode;
  TextEditingController? signUpEmailFieldTextController;
  String? Function(BuildContext, String?)?
      signUpEmailFieldTextControllerValidator;
  // State field(s) for signUpPasswordField widget.
  late FocusNode signUpPasswordFieldPasswordVisibilityFocusNode;
  FocusNode? signUpPasswordFieldFocusNode;
  TextEditingController? signUpPasswordFieldTextController;
  late bool signUpPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      signUpPasswordFieldTextControllerValidator;
  // State field(s) for signUpConfirmPasswordField widget.
  late FocusNode signUpConfirmPasswordFieldPasswordVisibilityFocusNode;
  FocusNode? signUpConfirmPasswordFieldFocusNode;
  TextEditingController? signUpConfirmPasswordFieldTextController;
  late bool signUpConfirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      signUpConfirmPasswordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signUpPasswordFieldPasswordVisibilityFocusNode = FocusNode();
    signUpPasswordFieldVisibility = false;
    signUpConfirmPasswordFieldPasswordVisibilityFocusNode = FocusNode();
    signUpConfirmPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    signUpNameFieldFocusNode?.dispose();
    signUpNameFieldTextController?.dispose();

    signUpEmailFieldFocusNode?.dispose();
    signUpEmailFieldTextController?.dispose();

    signUpPasswordFieldFocusNode?.dispose();
    signUpPasswordFieldTextController?.dispose();
    signUpPasswordFieldPasswordVisibilityFocusNode.dispose();
    signUpConfirmPasswordFieldFocusNode?.dispose();
    signUpConfirmPasswordFieldTextController?.dispose();
    signUpConfirmPasswordFieldPasswordVisibilityFocusNode.dispose();
  }
}
