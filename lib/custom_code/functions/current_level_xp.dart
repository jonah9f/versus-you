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

int currentLevelXp(int totalXp) {
  if (totalXp >= 11600) return 10;
  if (totalXp >= 8600) return 9;
  if (totalXp >= 6100) return 8;
  if (totalXp >= 4100) return 7;
  if (totalXp >= 2600) return 6;
  if (totalXp >= 1600) return 5;
  if (totalXp >= 850) return 4;
  if (totalXp >= 350) return 3;
  if (totalXp >= 100) return 2;

  return 1;
}
