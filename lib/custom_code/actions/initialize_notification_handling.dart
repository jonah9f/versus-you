// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<DocumentReference?> initializeNotificationHandling() async {
  print('🔥 INIT NOTIFICATION HANDLING STARTED');
  final notificationsPlugin = FlutterLocalNotificationsPlugin();

  const androidInitializationSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const iosInitializationSettings = DarwinInitializationSettings();

  const initializationSettings = InitializationSettings(
    android: androidInitializationSettings,
    iOS: iosInitializationSettings,
  );

  await notificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (NotificationResponse response) async {
      final payload = response.payload;

      print('NOTIFICATION TAP payload=$payload');

      if (payload != null && payload.isNotEmpty) {
        FFAppState().update(() {
          FFAppState().pendingChallengeId = payload;
          FFAppState().pendingChallengeRef =
              FirebaseFirestore.instance.collection('challenges').doc(payload);
        });
      }
    },
  );

  final launchDetails =
      await notificationsPlugin.getNotificationAppLaunchDetails();

  if (launchDetails?.didNotificationLaunchApp ?? false) {
    final payload = launchDetails?.notificationResponse?.payload;

    print('NOTIFICATION LAUNCH payload=$payload');

    if (payload != null && payload.isNotEmpty) {
      FFAppState().update(() {
        FFAppState().pendingChallengeId = payload;
        FFAppState().pendingChallengeRef =
            FirebaseFirestore.instance.collection('challenges').doc(payload);
      });
    }
  }
  return FFAppState().pendingChallengeRef;
  print('NOTIFICATION HANDLING INITIALIZED');
}
