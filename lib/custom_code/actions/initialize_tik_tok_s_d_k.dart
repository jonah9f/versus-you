// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:tiktok_business_sdk/tiktok_business_sdk.dart';

Future initializeTikTokSDK(
  String accessToken,
  String appId,
  String ttAppId,
) async {
  try {
    final tiktokSdk = TiktokBusinessSdk();

    await tiktokSdk.initTiktokBusinessSdk(
      accessToken: accessToken,
      appId: appId,
      ttAppId: ttAppId,
      openDebug: true,
      enableAutoIapTrack: false,
    );

    await tiktokSdk.trackTTEvent(
      event: EventName.completeTutorial,
    );

    print('TikTok SDK initialization completed');
  } catch (e) {
    print('TikTok SDK initialization failed: $e');
    rethrow;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
