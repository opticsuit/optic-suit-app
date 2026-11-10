import '/backend/api_requests/api_calls.dart';
import '/components/brand_card_widget.dart';
import '/components/category_item_widget.dart';
import '/components/product_card_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'optic_suit_home_page_widget.dart' show OpticSuitHomePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpticSuitHomePageModel extends FlutterFlowModel<OpticSuitHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel1;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel2;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel3;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel4;
  // Model for CategoryItem.
  late CategoryItemModel categoryItemModel5;
  // Model for BrandCard.
  late BrandCardModel brandCardModel1;
  // Model for BrandCard.
  late BrandCardModel brandCardModel2;
  // Model for BrandCard.
  late BrandCardModel brandCardModel3;
  // Model for BrandCard.
  late BrandCardModel brandCardModel4;
  // Model for BrandCard.
  late BrandCardModel brandCardModel5;
  // Model for ProductCard component.
  late ProductCardModel productCardModel;

  @override
  void initState(BuildContext context) {
    categoryItemModel1 = createModel(context, () => CategoryItemModel());
    categoryItemModel2 = createModel(context, () => CategoryItemModel());
    categoryItemModel3 = createModel(context, () => CategoryItemModel());
    categoryItemModel4 = createModel(context, () => CategoryItemModel());
    categoryItemModel5 = createModel(context, () => CategoryItemModel());
    brandCardModel1 = createModel(context, () => BrandCardModel());
    brandCardModel2 = createModel(context, () => BrandCardModel());
    brandCardModel3 = createModel(context, () => BrandCardModel());
    brandCardModel4 = createModel(context, () => BrandCardModel());
    brandCardModel5 = createModel(context, () => BrandCardModel());
    productCardModel = createModel(context, () => ProductCardModel());
  }

  @override
  void dispose() {
    categoryItemModel1.dispose();
    categoryItemModel2.dispose();
    categoryItemModel3.dispose();
    categoryItemModel4.dispose();
    categoryItemModel5.dispose();
    brandCardModel1.dispose();
    brandCardModel2.dispose();
    brandCardModel3.dispose();
    brandCardModel4.dispose();
    brandCardModel5.dispose();
    productCardModel.dispose();
  }
}
