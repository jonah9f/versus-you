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

Future scheduleMissedDayReminders() async {
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

  tz.initializeTimeZones();

  final localTimezone = await FlutterTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(localTimezone.identifier));

  final now = tz.TZDateTime.now(tz.local);

  const androidDetails = AndroidNotificationDetails(
    'missed_day_reminders',
    'Missed Day Reminders',
    channelDescription: 'Reminders when you have been inactive on Versus You',
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

  // Schedule reminders for the next 7 missed days.
  for (int day = 1; day <= 7; day++) {
    final date = now.add(Duration(days: day));

    // Fire at 7:00 PM local time.
    final scheduledDate = tz.TZDateTime(
      tz.local,
      date.year,
      date.month,
      date.day,
      19,
      0,
    );

    String message;

    if (day == 1) {
      message = 'You missed 1 day. Get back on track today.';
    } else if (day == 2) {
      message = 'You’ve missed 2 days in a row. Don’t let it become 3.';
    } else if (day == 3) {
      message = '3 days missed. Today is your reset.';
    } else {
      message = 'You’ve missed $day days in a row. Time to get back on track.';
    }

    await notificationsPlugin.zonedSchedule(
      920000 + day,
      'Versus You',
      message,
      scheduledDate,
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      payload: 'missed_day_$day',
    );
  }

  print('Scheduled 7 missed-day reminders.');
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
