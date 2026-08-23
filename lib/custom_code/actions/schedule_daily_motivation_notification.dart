// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';

Future scheduleDailyMotivationNotification() async {
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

  final messages = [
    'Stay focused. Finish your goals.',
    'You vs. you. Keep going.',
    'Don\'t let today slip away.',
    'Your goals are waiting. Get after it.',
    'Discipline wins when motivation disappears.',
    'Finish what you started.',
    'One more step toward the person you want to become.',
    'Make today count.',
  ];

  const androidDetails = AndroidNotificationDetails(
    'daily_motivation',
    'Daily Motivation',
    channelDescription: 'Daily Versus You motivational reminders',
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

  // Schedule the next 7 days.
  for (int i = 0; i < 7; i++) {
    final date = now.add(Duration(days: i));

    // Makes the random choice consistent for that specific date.
    final seed = date.year * 10000 + date.month * 100 + date.day;
    final random = Random(seed);

    // Random hour from 11 AM through 7 PM.
    final hour = 11 + random.nextInt(9);

    // Random minute within that hour.
    final minute = random.nextInt(60);
    33;

    final message = messages[random.nextInt(messages.length)];

    final scheduledDate = tz.TZDateTime(
      tz.local,
      date.year,
      date.month,
      date.day,
      hour,
      minute,
    );

    // Don't schedule today's notification if its random time already passed.
    if (!scheduledDate.isAfter(now)) {
      continue;
    }

    // Unique ID based on the calendar date.
    final notificationId =
        910000 + ((date.year * 10000 + date.month * 100 + date.day) % 100000);

    await notificationsPlugin.zonedSchedule(
      notificationId,
      'Versus You',
      message,
      scheduledDate,
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      payload: 'daily_motivation',
    );
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
