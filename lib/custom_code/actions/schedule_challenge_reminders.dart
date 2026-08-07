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

Future scheduleChallengeReminders(
  String challengeName,
  DateTime reminderTime,
  List<String> repeatDays,
  String challengeId,
) async {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

  print(
    'REMINDER ACTION START | '
    'name=$challengeName | '
    'time=$reminderTime | '
    'repeatDays=$repeatDays | '
    'challengeId=$challengeId',
  );

  const androidInitializationSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const iosInitializationSettings = DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );

  const initializationSettings = InitializationSettings(
    android: androidInitializationSettings,
    iOS: iosInitializationSettings,
  );

  await notificationsPlugin.initialize(initializationSettings);

  print('REMINDER: notifications initialized');

  final androidPlugin =
      notificationsPlugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();

  await androidPlugin?.requestNotificationsPermission();
  await androidPlugin?.requestExactAlarmsPermission();

  tz.initializeTimeZones();

  final localTimezone = await FlutterTimezone.getLocalTimezone();
  print('REMINDER: timezone=${localTimezone.identifier}');
  tz.setLocalLocation(tz.getLocation(localTimezone.identifier));

  const androidNotificationDetails = AndroidNotificationDetails(
    'challenge_reminders',
    'Challenge Reminders',
    channelDescription: 'Recurring reminders for Versus You challenges',
    importance: Importance.high,
    priority: Priority.high,
  );

  const iosNotificationDetails = DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
  );

  const notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
    iOS: iosNotificationDetails,
  );

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
    print('REMINDER: timezone=${localTimezone.identifier}');

    if (weekday == null) {
      continue;
    }

    final scheduledDate = _nextWeekdayTime(
      weekday,
      reminderTime.hour,
      reminderTime.minute,
    );
    print(
      'VERSUS YOU REMINDER: $challengeName | '
      'weekday=$weekday | '
      'scheduled=$scheduledDate | '
      'now=${tz.TZDateTime.now(tz.local)}',
    );

    final notificationId = Object.hash(challengeId, weekday).abs() % 2147483647;

    await notificationsPlugin.zonedSchedule(
      notificationId,
      'Versus You',
      'Time to complete: $challengeName',
      scheduledDate,
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
      payload: challengeId,
    );
    print('REMINDER: zonedSchedule completed');

    final pending = await notificationsPlugin.pendingNotificationRequests();

    print(
      'REMINDER: pending notifications = '
      '${pending.map((n) => '${n.id}:${n.title}').toList()}',
    );
  }
}

tz.TZDateTime _nextWeekdayTime(
  int weekday,
  int hour,
  int minute,
) {
  final now = tz.TZDateTime.now(tz.local);

  int daysAhead = (weekday - now.weekday) % 7;

  var scheduledDate = tz.TZDateTime(
    tz.local,
    now.year,
    now.month,
    now.day + daysAhead,
    hour,
    minute,
  );

  if (!scheduledDate.isAfter(now)) {
    scheduledDate = scheduledDate.add(const Duration(days: 7));
  }

  return scheduledDate;
}
