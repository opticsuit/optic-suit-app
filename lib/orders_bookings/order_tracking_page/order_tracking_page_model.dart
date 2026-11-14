import '/components/status_step_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'order_tracking_page_widget.dart' show OrderTrackingPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderTrackingPageModel extends FlutterFlowModel<OrderTrackingPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatusStep.
  late StatusStepModel statusStepModel1;
  // Model for StatusStep.
  late StatusStepModel statusStepModel2;
  // Model for StatusStep.
  late StatusStepModel statusStepModel3;
  // Model for StatusStep.
  late StatusStepModel statusStepModel4;
  // Model for StatusStep.
  late StatusStepModel statusStepModel5;
  // Model for StatusStep.
  late StatusStepModel statusStepModel6;

  @override
  void initState(BuildContext context) {
    statusStepModel1 = createModel(context, () => StatusStepModel());
    statusStepModel2 = createModel(context, () => StatusStepModel());
    statusStepModel3 = createModel(context, () => StatusStepModel());
    statusStepModel4 = createModel(context, () => StatusStepModel());
    statusStepModel5 = createModel(context, () => StatusStepModel());
    statusStepModel6 = createModel(context, () => StatusStepModel());
  }

  @override
  void dispose() {
    statusStepModel1.dispose();
    statusStepModel2.dispose();
    statusStepModel3.dispose();
    statusStepModel4.dispose();
    statusStepModel5.dispose();
    statusStepModel6.dispose();
  }
}
