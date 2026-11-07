import '/backend/api_requests/api_calls.dart';
import '/components/category_chip2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_widget.dart' show ShopWidget;
import 'package:flutter/material.dart';

class ShopModel extends FlutterFlowModel<ShopWidget> {
  ///  Local state fields for this page.

  List<dynamic> products = [];
  void addToProducts(dynamic item) => products.add(item);
  void removeFromProducts(dynamic item) => products.remove(item);
  void removeAtIndexFromProducts(int index) => products.removeAt(index);
  void insertAtIndexInProducts(int index, dynamic item) =>
      products.insert(index, item);
  void updateProductsAtIndex(int index, Function(dynamic) updateFn) =>
      products[index] = updateFn(products[index]);

  int nextPage = 2;

  bool hasMore = true;

  bool? loadingMore = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (WooCommerce Products)] action in Shop widget.
  ApiCallResponse? firstBatch;
  // Stores action output result for [Backend Call - API (WooCommerce Products)] action in Column widget.
  ApiCallResponse? moreBatch;
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
  // Stores action output result for [Backend Call - API (WooCommerce Products)] action in Row widget.
  ApiCallResponse? appendProducts;

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
