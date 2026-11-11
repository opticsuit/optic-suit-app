import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'shop_widget.dart' show ShopWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopModel extends FlutterFlowModel<ShopWidget> {
  ///  Local state fields for this page.

  int? cartQuantity = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetCart)] action in Shop widget.
  ApiCallResponse? getCartDslRes0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
