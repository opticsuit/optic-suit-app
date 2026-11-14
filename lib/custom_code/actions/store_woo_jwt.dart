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
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<bool> storeWooJwt(BuildContext context, String? token) async {
  if (token == null || token.trim().isEmpty) {
    return false;
  }

  try {
    const storage = FlutterSecureStorage();
    await storage.write(key: 'woo_jwt_token', value: token.trim());
    return true;
  } catch (_) {
    return false;
  }
}
