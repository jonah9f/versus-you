import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding14_widget.dart' show Onboarding14Widget;
import 'package:flutter/material.dart';

class Onboarding14Model extends FlutterFlowModel<Onboarding14Widget> {
  ///  Local state fields for this page.

  List<String> selectedRecommendedHabits = [];
  void addToSelectedRecommendedHabits(String item) =>
      selectedRecommendedHabits.add(item);
  void removeFromSelectedRecommendedHabits(String item) =>
      selectedRecommendedHabits.remove(item);
  void removeAtIndexFromSelectedRecommendedHabits(int index) =>
      selectedRecommendedHabits.removeAt(index);
  void insertAtIndexInSelectedRecommendedHabits(int index, String item) =>
      selectedRecommendedHabits.insert(index, item);
  void updateSelectedRecommendedHabitsAtIndex(
          int index, Function(String) updateFn) =>
      selectedRecommendedHabits[index] =
          updateFn(selectedRecommendedHabits[index]);

  bool makeBedSelected = false;

  bool noSnoozeSelected = false;

  bool top3tasksSelected = false;

  bool read30selected = false;

  bool walk20selected = false;

  bool cleanSpace10Selected = false;

  bool planTomorrowSelected = false;

  bool layOutClothesSelected = false;

  bool prepareTomorrowSelected = false;

  bool water16ozSelected = false;

  bool proteinBreakfastSelected = false;

  bool morningStretchSelected = false;

  bool workout30Selected = false;

  bool proteinMealSelected = false;

  bool nightStretchSelected = false;

  bool mealPrepSelected = false;

  bool fillWaterSelected = false;

  bool reviewTop3Selected = false;

  bool careerReadingSelected = false;

  bool careerSkill15Selected = false;

  bool outreach3Selected = false;

  bool careerSkill30Selected = false;

  bool applyOpportunitySelected = false;

  bool tomorrowCareerTaskSelected = false;

  bool updateWork15Selected = false;

  bool findOpportunitySelected = false;

  bool affirmations3Selected = false;

  bool sayHelloSelected = false;

  bool selfQualities3Selected = false;

  bool startConversationSelected = false;

  bool giveComplimentSelected = false;

  bool faceAvoidedTaskSelected = false;

  bool threeWinsSelected = false;

  bool confidenceMomentSelected = false;

  bool confidencePrepSelected = false;

  bool wakeTimeSelected = false;

  bool morningSunlightSelected = false;

  bool bedroomPrepSelected = false;

  bool windDown10Selected = false;

  bool bedtimeSelected = false;

  bool meditate10Selected = false;

  bool read10PagesSelected = false;

  bool brainTraining5Selected = false;

  bool focus20Selected = false;

  bool learn20Selected = false;

  bool logicTraining10Selected = false;

  bool learned3Selected = false;

  bool nightRead20Selected = false;

  bool journal10Selected = false;

  DateTime? disciplineMorningTime;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? makeBedChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? noSnoozeChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? top3ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? meditate10ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? read10PagesChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? brainTraining5ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? wakeTimeChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? morningSunlightChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? makeBed2ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? affirmations3challengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? sayHelloChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? selfQualities3ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? reviewTop3ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? careerReadingChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? careerSkill15ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? water16ozChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? proteinBreakfastChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? morningStretchChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? read30ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? walk20ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? cleanSpace10ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? focus20ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? learn20ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? logicTraining10ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? startConversationChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? giveComplimentChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? faceAvoidedTaskChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? outreach3ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? careerSkill30ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? applyOppurtinityChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? workout30ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? walk20ChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? proteinMealChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? planTomorrowChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? layOutClothesChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? prepareTomorrowChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? learned3ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? nightRead20ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? journal10ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? bedroomPrepChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? windDown10ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? bedtimeSelectedChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? threeWinsChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? confidenceMomentChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? confidencePrepChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? tomorrowCareerChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? updateWork15ChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? findOppurtunityChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? nightStretchChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? mealPrepChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? fillWaterChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? water16ozChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? workout30ChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? noSnoozeChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? top3TasksChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? applyOpportunityChallengeCreated;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? outreach3ChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? startConversationChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? threeWinsChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? morningSunlightChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? windDown10ChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? meditate10ChallengeCreated2;
  // Stores action output result for [Bottom Sheet - AddChallengeSheet] action in Container widget.
  bool? learn20ChallengeCreated2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
