import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding7_widget.dart' show Onboarding7Widget;
import 'package:flutter/material.dart';

class Onboarding7Model extends FlutterFlowModel<Onboarding7Widget> {
  ///  Local state fields for this page.

  List<String> selectedObstacles = [];
  void addToSelectedObstacles(String item) => selectedObstacles.add(item);
  void removeFromSelectedObstacles(String item) =>
      selectedObstacles.remove(item);
  void removeAtIndexFromSelectedObstacles(int index) =>
      selectedObstacles.removeAt(index);
  void insertAtIndexInSelectedObstacles(int index, String item) =>
      selectedObstacles.insert(index, item);
  void updateSelectedObstaclesAtIndex(int index, Function(String) updateFn) =>
      selectedObstacles[index] = updateFn(selectedObstacles[index]);

  bool procrastinationSelected = false;

  bool consistencySelected = false;

  bool distractionsSelected = false;

  bool motivationSelected = false;

  bool routineSelected = false;

  bool directionSelected = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
