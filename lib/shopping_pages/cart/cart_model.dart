import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for Entercouponcode widget.
  FocusNode? entercouponcodeFocusNode;
  TextEditingController? entercouponcodeTextController;
  String? Function(BuildContext, String?)?
      entercouponcodeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    entercouponcodeFocusNode?.dispose();
    entercouponcodeTextController?.dispose();
  }
}
