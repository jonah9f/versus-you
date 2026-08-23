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

Future scheduleDailyQuoteNotification() async {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

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

  tz.initializeTimeZones();

  final localTimezone = await FlutterTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(localTimezone.identifier));

  final now = tz.TZDateTime.now(tz.local);

  // Morning notification at 8:00 AM.
  var scheduledDate =
      tz.TZDateTime(tz.local, now.year, now.month, now.day, 8, 0);
  if (!scheduledDate.isAfter(now)) {
    scheduledDate = scheduledDate.add(const Duration(days: 1));
  }

  const androidDetails = AndroidNotificationDetails(
    'daily_quote',
    'Daily Quote',
    channelDescription: 'Morning Versus You daily quote reminders',
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
    900001,
    'Daily Quote',
    'Your daily quote is ready. Tap to view.',
    scheduledDate,
    notificationDetails,
    androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: 'daily_quote',
  );
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
