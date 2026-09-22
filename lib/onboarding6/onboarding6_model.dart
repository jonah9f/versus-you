import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding6_widget.dart' show Onboarding6Widget;
import 'package:flutter/material.dart';

class Onboarding6Model extends FlutterFlowModel<Onboarding6Widget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
