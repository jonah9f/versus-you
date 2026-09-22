import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding5_widget.dart' show Onboarding5Widget;
import 'package:flutter/material.dart';

class Onboarding5Model extends FlutterFlowModel<Onboarding5Widget> {
  ///  Local state fields for this page.

  List<String> selectedSecondaryGoals = [];
  void addToSelectedSecondaryGoals(String item) =>
      selectedSecondaryGoals.add(item);
  void removeFromSelectedSecondaryGoals(String item) =>
      selectedSecondaryGoals.remove(item);
  void removeAtIndexFromSelectedSecondaryGoals(int index) =>
      selectedSecondaryGoals.removeAt(index);
  void insertAtIndexInSelectedSecondaryGoals(int index, String item) =>
      selectedSecondaryGoals.insert(index, item);
  void updateSelectedSecondaryGoalsAtIndex(
          int index, Function(String) updateFn) =>
      selectedSecondaryGoals[index] = updateFn(selectedSecondaryGoals[index]);

  bool disciplineSelected = false;

  bool careerSelected = false;

  bool sleepSelected = false;

  bool fitnessSelected = false;

  bool confidenceSelected = false;

  bool mentalSelected = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
