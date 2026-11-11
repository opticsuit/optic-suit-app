import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'wishlist_page_widget.dart' show WishlistPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WishlistPageModel extends FlutterFlowModel<WishlistPageWidget> {
  ///  Local state fields for this page.

  bool? addingItem = false;

  String? cartMessage = '';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (AddToCart)] action in Button widget.
  ApiCallResponse? addToCartDslRes0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
