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

int calculateDisciplineChange(
  int completed,
  int attempted,
  int currentStreak,
) {
  if (attempted <= 0) {
    return 0;
  }

  final double rate = completed / attempted;
  int change = 0;

  if (rate >= 1.0) {
    change = 6;
  } else if (rate >= 0.75) {
    change = 3;
  } else if (rate >= 0.50) {
    change = 0;
  } else if (rate >= 0.25) {
    change = -4;
  } else if (rate > 0.0) {
    change = -7;
  } else {
    change = -10;
  }

  if (currentStreak >= 30) {
    change += 2;
  } else if (currentStreak >= 7) {
    change += 1;
  }

  return change;
}
