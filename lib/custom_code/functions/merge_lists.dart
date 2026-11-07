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
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<dynamic>? mergeLists(
  List<dynamic>? oldProducts,
  List<dynamic>? newProducts,
) {
  final merged = [...(oldProducts ?? [])];
  final ids = <dynamic>{};
  for (final product in merged) {
    if (product is Map) ids.add(product['id']);
  }
  for (final product in newProducts ?? []) {
    if (product is Map && ids.add(product['id'])) merged.add(product);
  }
  return merged;
}
