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

Future rescheduleBuildHabitReminder(
  String challengeName,
  DocumentReference challengeRef,
  int delayMinutes,
) async {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

  // Get the challenge's Firestore document ID from its reference.
  final challengeId = challengeRef.id;

  // Initialize notifications.
  const androidInitializationSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const iosInitializationSettings = DarwinInitializationSettings();

  const initializationSettings = InitializationSettings(
    android: androidInitializationSettings,
    iOS: iosInitializationSettings,
  );

  await notificationsPlugin.initialize(initializationSettings);

  // Initialize and set the device timezone.
  tz.initializeTimeZones();

  final localTimezone = await FlutterTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(localTimezone.identifier));

  // Schedule the follow-up reminder.
  final scheduledDate =
      tz.TZDateTime.now(tz.local).add(Duration(minutes: delayMinutes));

  const androidDetails = AndroidNotificationDetails(
    'challenge_reminders',
    'Challenge Reminders',
    channelDescription: 'Reminders for Versus You challenges',
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

  // Generate a unique notification ID.
  final notificationId = Object.hash(
    challengeId,
    scheduledDate.millisecondsSinceEpoch,
  ).abs();

  print(
    'FOLLOWUP ATTEMPT | name=$challengeName | '
    'id=$challengeId | scheduled=$scheduledDate | '
    'now=${tz.TZDateTime.now(tz.local)}',
  );

  await notificationsPlugin.zonedSchedule(
    notificationId,
    'Versus You',
    'Still need to complete: $challengeName',
    scheduledDate,
    notificationDetails,
    androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    payload: challengeId,
  );

  final pending = await notificationsPlugin.pendingNotificationRequests();

  print(
    'FOLLOWUP SCHEDULED | pending=${pending.map((n) => '${n.id}:${n.title}:${n.body}:${n.payload}').toList()}',
  );

  print(
    'BUILD HABIT FOLLOW-UP: $challengeName | '
    'challengeId=$challengeId | '
    'scheduled=$scheduledDate',
  );
}
