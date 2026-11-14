import '/auth/firebase_auth/auth_util.dart';
import '/components/summary_row3_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'order_success_widget.dart' show OrderSuccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderSuccessModel extends FlutterFlowModel<OrderSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SummaryRow3.
  late SummaryRow3Model summaryRow3Model1;
  // Model for SummaryRow3.
  late SummaryRow3Model summaryRow3Model2;
  // Model for SummaryRow3.
  late SummaryRow3Model summaryRow3Model3;

  @override
  void initState(BuildContext context) {
    summaryRow3Model1 = createModel(context, () => SummaryRow3Model());
    summaryRow3Model2 = createModel(context, () => SummaryRow3Model());
    summaryRow3Model3 = createModel(context, () => SummaryRow3Model());
  }

  @override
  void dispose() {
    summaryRow3Model1.dispose();
    summaryRow3Model2.dispose();
    summaryRow3Model3.dispose();
  }
}
