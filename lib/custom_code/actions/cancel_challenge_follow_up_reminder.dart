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
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';

Future cancelChallengeFollowUpReminder(
  String challengeId,
  String challengeName,
  DateTime? reminderTime,
) async {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

  if (reminderTime == null) {
    print('NO REMINDER TIME — NOTHING TO CANCEL');
    return;
  }

  tz.initializeTimeZones();

  final localTimezone = await FlutterTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(localTimezone.identifier));

  final now = tz.TZDateTime.now(tz.local);
  final weekday = now.weekday;

  // This must match the ID used by scheduleChallengeReminders.
  final followUpNotificationId =
      _stableNotificationId('${challengeId}_followup', weekday);

  // Cancel today's currently scheduled recurring follow-up.
  await notificationsPlugin.cancel(followUpNotificationId);

  // Work out the follow-up time: original reminder + 30 minutes.
  final followUpTime = reminderTime.add(const Duration(minutes: 30));

  // Because today's occurrence was completed, schedule the next one
  // for the same weekday NEXT week.
  final nextWeek = now.add(const Duration(days: 7));

  final nextFollowUp = tz.TZDateTime(
    tz.local,
    nextWeek.year,
    nextWeek.month,
    nextWeek.day,
    followUpTime.hour,
    followUpTime.minute,
  );

  const androidDetails = AndroidNotificationDetails(
    'challenge_reminders',
    'Challenge Reminders',
    channelDescription: 'Reminders for your Versus You challenges',
    importance: Importance.high,
    priority: Priority.high,
  );

  const iosDetails = DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
  );

  const notificationDetails = NotificationDetails(
    android: androidDetails,
    iOS: iosDetails,
  );

  await notificationsPlugin.zonedSchedule(
    followUpNotificationId,
    'Versus You',
    'Still need to complete $challengeName? Tap here to finish your challenge.',
    nextFollowUp,
    notificationDetails,
    androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
    matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
    payload: challengeId.split(' - ').first,
  );

  print(
      'FOLLOWUP CANCELLED FOR TODAY + RESCHEDULED NEXT WEEK | id=$followUpNotificationId');
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
