// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String?> initializeCartToken(BuildContext context) async {
  try {
    final response = await http.get(
      Uri.parse('https://opticsuit.com/wp-json/wc/store/v1/cart'),
    );

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return null;
    }

    final token = response.headers['cart-token']?.trim();
    return token == null || token.isEmpty ? null : token;
  } catch (_) {
    return null;
  }
}
