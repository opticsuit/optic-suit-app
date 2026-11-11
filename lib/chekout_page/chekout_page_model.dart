import '/components/summary_row_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'chekout_page_widget.dart' show ChekoutPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChekoutPageModel extends FlutterFlowModel<ChekoutPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel3;

  @override
  void initState(BuildContext context) {
    summaryRowModel1 = createModel(context, () => SummaryRowModel());
    summaryRowModel2 = createModel(context, () => SummaryRowModel());
    summaryRowModel3 = createModel(context, () => SummaryRowModel());
  }

  @override
  void dispose() {
    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
  }
}
