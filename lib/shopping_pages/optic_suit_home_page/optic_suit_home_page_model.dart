import '/components/brand_card_widget.dart';
import '/components/category_item_widget.dart';
import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'optic_suit_home_page_widget.dart' show OpticSuitHomePageWidget;
import 'package:flutter/material.dart';

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
  late ProductCardModel productCardModel1;
  // Model for ProductCard component.
  late ProductCardModel productCardModel2;
  // Model for ProductCard component.
  late ProductCardModel productCardModel3;
  // Model for ProductCard component.
  late ProductCardModel productCardModel4;

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
    productCardModel1 = createModel(context, () => ProductCardModel());
    productCardModel2 = createModel(context, () => ProductCardModel());
    productCardModel3 = createModel(context, () => ProductCardModel());
    productCardModel4 = createModel(context, () => ProductCardModel());
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
    productCardModel1.dispose();
    productCardModel2.dispose();
    productCardModel3.dispose();
    productCardModel4.dispose();
  }
}
