import '/components/payment_method_widget.dart';
import '/components/summary_row_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'chekout_page_widget.dart' show ChekoutPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ChekoutPageModel extends FlutterFlowModel<ChekoutPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PaymentMethod.
  late PaymentMethodModel paymentMethodModel1;
  // Model for PaymentMethod.
  late PaymentMethodModel paymentMethodModel2;
  // Model for PaymentMethod.
  late PaymentMethodModel paymentMethodModel3;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel3;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel4;

  @override
  void initState(BuildContext context) {
    paymentMethodModel1 = createModel(context, () => PaymentMethodModel());
    paymentMethodModel2 = createModel(context, () => PaymentMethodModel());
    paymentMethodModel3 = createModel(context, () => PaymentMethodModel());
    summaryRowModel1 = createModel(context, () => SummaryRowModel());
    summaryRowModel2 = createModel(context, () => SummaryRowModel());
    summaryRowModel3 = createModel(context, () => SummaryRowModel());
    summaryRowModel4 = createModel(context, () => SummaryRowModel());
  }

  @override
  void dispose() {
    paymentMethodModel1.dispose();
    paymentMethodModel2.dispose();
    paymentMethodModel3.dispose();
    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
    summaryRowModel4.dispose();
  }
}
