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

import 'package:flutter/foundation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

Future openPromoCodeRedemption() async {
  if (defaultTargetPlatform != TargetPlatform.iOS || kIsWeb) {
    return;
  }

  try {
    await Purchases.presentCodeRedemptionSheet();
  } catch (e) {
    debugPrint('Error opening promo code redemption: $e');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
