import '/components/cart_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CartItem.
  late CartItemModel cartItemModel1;
  // Model for CartItem.
  late CartItemModel cartItemModel2;
  // Model for CartItem.
  late CartItemModel cartItemModel3;

  @override
  void initState(BuildContext context) {
    cartItemModel1 = createModel(context, () => CartItemModel());
    cartItemModel2 = createModel(context, () => CartItemModel());
    cartItemModel3 = createModel(context, () => CartItemModel());
  }

  @override
  void dispose() {
    cartItemModel1.dispose();
    cartItemModel2.dispose();
    cartItemModel3.dispose();
  }
}
