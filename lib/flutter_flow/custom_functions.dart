import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

bool isFilledLevel(
  int level,
  int current,
) {
  return level > current;
}

double getPercent(int level) {
  return level / 100;
}

String? getImagePath(String? path) {
  if (path == null) {
    return null;
  } else {
    return path;
  }
}
