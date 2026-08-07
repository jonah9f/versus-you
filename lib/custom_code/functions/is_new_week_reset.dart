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

bool isNewWeekReset(
  DateTime? lastWeekStart,
  DateTime? currentDate,
) {
  final now = currentDate ?? DateTime.now();

  final currentDay = DateTime(now.year, now.month, now.day);
  final currentWeekStart = currentDay.subtract(
    Duration(days: currentDay.weekday - 1),
  );

  if (lastWeekStart == null) {
    return true;
  }

  final savedDay = DateTime(
    lastWeekStart.year,
    lastWeekStart.month,
    lastWeekStart.day,
  );

  final savedWeekStart = savedDay.subtract(
    Duration(days: savedDay.weekday - 1),
  );

  return savedWeekStart.isBefore(currentWeekStart);
}
