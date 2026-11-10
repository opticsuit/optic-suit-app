import '/components/status_step_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'order_tracking_page_widget.dart' show OrderTrackingPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
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
  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {
    statusStepModel1 = createModel(context, () => StatusStepModel());
    statusStepModel2 = createModel(context, () => StatusStepModel());
    statusStepModel3 = createModel(context, () => StatusStepModel());
    statusStepModel4 = createModel(context, () => StatusStepModel());
    statusStepModel5 = createModel(context, () => StatusStepModel());
  }

  @override
  void dispose() {
    statusStepModel1.dispose();
    statusStepModel2.dispose();
    statusStepModel3.dispose();
    statusStepModel4.dispose();
    statusStepModel5.dispose();
  }
}
