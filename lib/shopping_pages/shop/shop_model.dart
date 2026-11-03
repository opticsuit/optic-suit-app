import '/backend/api_requests/api_calls.dart';
import '/components/category_chip2_widget.dart';
import '/components/product_card2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import 'shop_widget.dart' show ShopWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopModel extends FlutterFlowModel<ShopWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryChip.
  late CategoryChip2Model categoryChipModel1;
  // Model for CategoryChip.
  late CategoryChip2Model categoryChipModel2;
  // Model for CategoryChip.
  late CategoryChip2Model categoryChipModel3;
  // Model for CategoryChip.
  late CategoryChip2Model categoryChipModel4;
  // Model for CategoryChip.
  late CategoryChip2Model categoryChipModel5;

  @override
  void initState(BuildContext context) {
    categoryChipModel1 = createModel(context, () => CategoryChip2Model());
    categoryChipModel2 = createModel(context, () => CategoryChip2Model());
    categoryChipModel3 = createModel(context, () => CategoryChip2Model());
    categoryChipModel4 = createModel(context, () => CategoryChip2Model());
    categoryChipModel5 = createModel(context, () => CategoryChip2Model());
  }

  @override
  void dispose() {
    categoryChipModel1.dispose();
    categoryChipModel2.dispose();
    categoryChipModel3.dispose();
    categoryChipModel4.dispose();
    categoryChipModel5.dispose();
  }
}
