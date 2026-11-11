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

String wooCartItemSavings(
  String? regularPrice,
  String? salePrice,
  String? symbol,
) {
  final regular = int.tryParse(regularPrice ?? '');
  final sale = int.tryParse(salePrice ?? '');
  if (regular == null || sale == null || regular <= sale) return '';
  return formatWooPrice((regular - sale).toString(), symbol) ?? '';
}
