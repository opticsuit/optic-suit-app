import '/components/cart_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';

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
