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

int xpNeededForNextLevel(int totalXp) {
  if (totalXp >= 11600) return 3000;
  if (totalXp >= 8600) return 3000;
  if (totalXp >= 6100) return 2500;
  if (totalXp >= 4100) return 2000;
  if (totalXp >= 2600) return 1500;
  if (totalXp >= 1600) return 1000;
  if (totalXp >= 850) return 750;
  if (totalXp >= 350) return 500;
  if (totalXp >= 100) return 250;

  return 100;
}
