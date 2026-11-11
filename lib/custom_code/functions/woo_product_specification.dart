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

String wooProductSpecification(
  dynamic product,
  String field,
) {
  if (product is! Map) return 'Not specified';

  final normalizedField =
      field.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  if (normalizedField == 'sku') {
    final sku = product['sku']?.toString().trim();
    return sku == null || sku.isEmpty ? 'Not specified' : sku;
  }
  if (normalizedField == 'stockstatus') {
    final stockText = product['stock_availability'] is Map
        ? product['stock_availability']['text']?.toString().trim()
        : null;
    if (stockText != null && stockText.isNotEmpty) return stockText;
    final inStock = product['is_in_stock'];
    if (inStock == true) return 'In stock';
    if (inStock == false) return 'Out of stock';
    return 'Not specified';
  }

  final aliases = switch (normalizedField) {
    'brand' => ['brand', 'pabrand'],
    'framematerial' => [
        'framematerial',
        'material',
        'paframematerial',
        'pamaterial'
      ],
    'frameshape' => ['frameshape', 'shape', 'paframeshape', 'pashape'],
    'frametype' => ['frametype', 'type', 'paframetype', 'patype'],
    'framecolor' => [
        'framecolor',
        'color',
        'colorcode',
        'paframecolor',
        'pacolor',
        'pacolorcode'
      ],
    'framesize' => ['framesize', 'size', 'paframesize', 'pasize'],
    'gender' => ['gender', 'pagender'],
    _ => [normalizedField],
  };

  final attributes = product['attributes'];
  if (attributes is List) {
    for (final attribute in attributes) {
      if (attribute is! Map) continue;
      final name = attribute['name']
              ?.toString()
              .toLowerCase()
              .replaceAll(RegExp(r'[^a-z0-9]'), '') ??
          '';
      final slug = attribute['taxonomy']
              ?.toString()
              .toLowerCase()
              .replaceAll(RegExp(r'[^a-z0-9]'), '') ??
          '';
      if (!aliases.contains(name) && !aliases.contains(slug)) continue;

      final terms = attribute['terms'];
      if (terms is List) {
        final values = terms
            .whereType<Map>()
            .map((term) => term['name']?.toString().trim() ?? '')
            .where((value) => value.isNotEmpty)
            .toList();
        if (values.isNotEmpty) return values.join(', ');
      }
      final options = attribute['options'];
      if (options is List) {
        final values = options
            .map((option) => option.toString().trim())
            .where((value) => value.isNotEmpty)
            .toList();
        if (values.isNotEmpty) return values.join(', ');
      }
    }
  }

  if (normalizedField == 'brand' && product['brands'] is List) {
    final brands = (product['brands'] as List)
        .whereType<Map>()
        .map((brand) => brand['name']?.toString().trim() ?? '')
        .where((value) => value.isNotEmpty)
        .toList();
    if (brands.isNotEmpty) return brands.join(', ');
  }
  return 'Not specified';
}
