// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future cancelChallengeReminders(
  String challengeId,
  List<String> repeatDays,
) async {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

  final weekdayMap = <String, int>{
    'Monday': DateTime.monday,
    'Tuesday': DateTime.tuesday,
    'Wednesday': DateTime.wednesday,
    'Thursday': DateTime.thursday,
    'Friday': DateTime.friday,
    'Saturday': DateTime.saturday,
    'Sunday': DateTime.sunday,
    'Mon': DateTime.monday,
    'Tue': DateTime.tuesday,
    'Wed': DateTime.wednesday,
    'Thu': DateTime.thursday,
    'Fri': DateTime.friday,
    'Sat': DateTime.saturday,
    'Sun': DateTime.sunday,
  };

  for (final dayName in repeatDays) {
    final weekday = weekdayMap[dayName];

    if (weekday == null) {
      continue;
    }

    final notificationId = _stableNotificationId(challengeId, weekday);

    await notificationsPlugin.cancel(notificationId);

    print(
      'REMINDER CANCELLED | '
      'challenge=$challengeId | '
      'day=$dayName | '
      'id=$notificationId',
    );
  }

  final pending = await notificationsPlugin.pendingNotificationRequests();

  print(
    'REMINDER: pending after cancel = '
    '${pending.map((n) => '${n.id}:${n.title}').toList()}',
  );
}

int _stableNotificationId(String challengeId, int weekday) {
  final input = '$challengeId-$weekday';

  int hash = 0;

  for (final codeUnit in input.codeUnits) {
    hash = ((hash * 31) + codeUnit) & 0x7fffffff;
  }

  return hash;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
