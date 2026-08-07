import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String formatScreenTimeGoal(double? minutes) {
  if (minutes == null) {
    return 'No limit';
  }

  final int mins = minutes.round();

  if (mins < 60) {
    return '$mins min/day';
  }

  final hours = mins ~/ 60;
  final remainingMinutes = mins % 60;

  if (remainingMinutes == 0) {
    return '$hours hr/day';
  }

  return '$hours hr ${remainingMinutes} min/day';
}
