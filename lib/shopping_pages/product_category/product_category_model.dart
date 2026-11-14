import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/index.dart';
import 'product_category_widget.dart' show ProductCategoryWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductCategoryModel extends FlutterFlowModel<ProductCategoryWidget> {
  ///  Local state fields for this page.

  int? cartQuantity = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetCart)] action in ProductCategory widget.
  ApiCallResponse? getCartDslRes0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
