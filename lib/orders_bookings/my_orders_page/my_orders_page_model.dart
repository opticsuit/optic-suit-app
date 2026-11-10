import '/components/filter_chip_widget.dart';
import '/components/order_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'my_orders_page_widget.dart' show MyOrdersPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyOrdersPageModel extends FlutterFlowModel<MyOrdersPageWidget> {
  ///  Local state fields for this page.

  String? selectedStatus = 'All';

  ///  State fields for stateful widgets in this page.

  // Model for FilterChip.
  late FilterChipModel filterChipModel1;
  // Model for FilterChip.
  late FilterChipModel filterChipModel2;
  // Model for FilterChip.
  late FilterChipModel filterChipModel3;
  // Model for FilterChip.
  late FilterChipModel filterChipModel4;
  // Model for FilterChip.
  late FilterChipModel filterChipModel5;
  // Model for OrderCard.
  late OrderCardModel orderCardModel1;
  // Model for OrderCard.
  late OrderCardModel orderCardModel2;
  // Model for OrderCard.
  late OrderCardModel orderCardModel3;
  // Model for OrderCard.
  late OrderCardModel orderCardModel4;

  @override
  void initState(BuildContext context) {
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    filterChipModel3 = createModel(context, () => FilterChipModel());
    filterChipModel4 = createModel(context, () => FilterChipModel());
    filterChipModel5 = createModel(context, () => FilterChipModel());
    orderCardModel1 = createModel(context, () => OrderCardModel());
    orderCardModel2 = createModel(context, () => OrderCardModel());
    orderCardModel3 = createModel(context, () => OrderCardModel());
    orderCardModel4 = createModel(context, () => OrderCardModel());
  }

  @override
  void dispose() {
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    filterChipModel4.dispose();
    filterChipModel5.dispose();
    orderCardModel1.dispose();
    orderCardModel2.dispose();
    orderCardModel3.dispose();
    orderCardModel4.dispose();
  }
}
