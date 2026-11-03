import '/components/summary_row3_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'order_success_widget.dart' show OrderSuccessWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderSuccessModel extends FlutterFlowModel<OrderSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SummaryRow.
  late SummaryRow3Model summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRow3Model summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRow3Model summaryRowModel3;
  // Model for SummaryRow.
  late SummaryRow3Model summaryRowModel4;

  @override
  void initState(BuildContext context) {
    summaryRowModel1 = createModel(context, () => SummaryRow3Model());
    summaryRowModel2 = createModel(context, () => SummaryRow3Model());
    summaryRowModel3 = createModel(context, () => SummaryRow3Model());
    summaryRowModel4 = createModel(context, () => SummaryRow3Model());
  }

  @override
  void dispose() {
    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
    summaryRowModel4.dispose();
  }
}
