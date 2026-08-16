import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_challenge_form_widget.dart' show EditChallengeFormWidget;
import 'package:flutter/material.dart';

class EditChallengeFormModel extends FlutterFlowModel<EditChallengeFormWidget> {
  ///  Local state fields for this component.

  DateTime? selectedReminderTime;

  bool reminderTimeChanged = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for ChallengeNameField widget.
  FocusNode? challengeNameFieldFocusNode;
  TextEditingController? challengeNameFieldTextController;
  String? Function(BuildContext, String?)?
      challengeNameFieldTextControllerValidator;
  // State field(s) for xpRewardDropdown widget.
  int? xpRewardDropdownValue;
  FormFieldController<int>? xpRewardDropdownValueController;
  // State field(s) for reminderSwitch widget.
  bool? reminderSwitchValue;
  DateTime? datePicked;
  // State field(s) for repeatDaysChoiceChips widget.
  FormFieldController<List<String>>? repeatDaysChoiceChipsValueController;
  List<String>? get repeatDaysChoiceChipsValues =>
      repeatDaysChoiceChipsValueController?.value;
  set repeatDaysChoiceChipsValues(List<String>? val) =>
      repeatDaysChoiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    challengeNameFieldFocusNode?.dispose();
    challengeNameFieldTextController?.dispose();
  }
}
