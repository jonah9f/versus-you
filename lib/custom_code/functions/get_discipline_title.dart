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

String getDisciplineTitle(int totalXp) {
  if (totalXp >= 11600) return "Versus You";
  if (totalXp >= 8600) return "Unstoppable";
  if (totalXp >= 6100) return "Elite";
  if (totalXp >= 4100) return "Relentless";
  if (totalXp >= 2600) return "Focused";
  if (totalXp >= 1600) return "Disciplined";
  if (totalXp >= 850) return "Determined";
  if (totalXp >= 350) return "Consistent";
  if (totalXp >= 100) return "Building";

  return "Beginner";
}
