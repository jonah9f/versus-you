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

int previousDayCompleted(
  DateTime? lastCompletionDate,
  DateTime currentDate,
  int todayCompleted,
) {
  if (lastCompletionDate == null) {
    return 0;
  }

  final lastDay = DateTime(
    lastCompletionDate.year,
    lastCompletionDate.month,
    lastCompletionDate.day,
  );

  final currentDay = DateTime(
    currentDate.year,
    currentDate.month,
    currentDate.day,
  );

  final difference = currentDay.difference(lastDay).inDays;

  return difference == 1 ? todayCompleted : 0;
}
