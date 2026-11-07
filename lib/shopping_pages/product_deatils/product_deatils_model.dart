import '/components/detail_row2_widget.dart';
import '/components/suggestion_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_deatils_widget.dart' show ProductDeatilsWidget;
import 'package:flutter/material.dart';

class ProductDeatilsModel extends FlutterFlowModel<ProductDeatilsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DetailRow.
  late DetailRow2Model detailRowModel1;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel2;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel3;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel4;
  // Model for SuggestionCard.
  late SuggestionCardModel suggestionCardModel1;
  // Model for SuggestionCard.
  late SuggestionCardModel suggestionCardModel2;
  // Model for SuggestionCard.
  late SuggestionCardModel suggestionCardModel3;

  @override
  void initState(BuildContext context) {
    detailRowModel1 = createModel(context, () => DetailRow2Model());
    detailRowModel2 = createModel(context, () => DetailRow2Model());
    detailRowModel3 = createModel(context, () => DetailRow2Model());
    detailRowModel4 = createModel(context, () => DetailRow2Model());
    suggestionCardModel1 = createModel(context, () => SuggestionCardModel());
    suggestionCardModel2 = createModel(context, () => SuggestionCardModel());
    suggestionCardModel3 = createModel(context, () => SuggestionCardModel());
  }

  @override
  void dispose() {
    detailRowModel1.dispose();
    detailRowModel2.dispose();
    detailRowModel3.dispose();
    detailRowModel4.dispose();
    suggestionCardModel1.dispose();
    suggestionCardModel2.dispose();
    suggestionCardModel3.dispose();
  }
}
